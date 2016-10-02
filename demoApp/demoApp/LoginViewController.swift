//
//  LoginViewController.swift
//  demoApp
//
//  Copyright © 2016 Henryk. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let view_Background = UIView()
    let lbl_userName = UILabel()
    let lbl_userPassword = UILabel()
    let tx_userName = UITextField()
    let tx_userPassword = UITextField()
    var indicator_Loading = UIActivityIndicatorView()
    let btn_Ok = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        loadInterface()
    }
    func loadInterface(){
        //Background
        self.view_Background.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height)
//        self.view_Background.backgroundColor = UIColor.brownColor()
        self.view.addSubview(self.view_Background)
        //UserName
        self.lbl_userName.frame.size = CGSize(width: 80, height: 40)
        self.lbl_userName.frame.origin = CGPoint(x: 20, y: 100)
        self.lbl_userName.text = "Name"
        self.lbl_userName.backgroundColor = UIColor.darkGrayColor()
        
        self.view_Background.addSubview(self.lbl_userName)
        
        self.tx_userName.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width - 50 - lbl_userName.bounds.width, height: 40)
        self.tx_userName.frame.origin = CGPoint(x: 110, y: 100)
        self.tx_userName.backgroundColor = UIColor.grayColor()
        self.tx_userName.autocorrectionType = .No
        self.view_Background.addSubview(self.tx_userName)
        
        //Password
        self.lbl_userPassword.frame.size = CGSize(width: 80, height: 40)
        self.lbl_userPassword.frame.origin = CGPoint(x: lbl_userName.frame.origin.x, y: lbl_userName.frame.origin.y + lbl_userName.bounds.height + 30)
        self.lbl_userPassword.backgroundColor = UIColor.darkGrayColor()
        self.lbl_userPassword.text = "Password"
        self.view_Background.addSubview(self.lbl_userPassword)
        
        self.tx_userPassword.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width - 50 - lbl_userPassword.bounds.width, height: 40)
        self.tx_userPassword.frame.origin = CGPoint(x: 110, y: lbl_userPassword.frame.origin.y)
        self.tx_userPassword.backgroundColor = UIColor.grayColor()
        self.tx_userPassword.autocorrectionType = .No
        self.tx_userPassword.secureTextEntry = true
        self.view_Background.addSubview(self.tx_userPassword)
        
        //Submit button
        self.btn_Ok.frame.size = CGSize(width: 80, height: 40)
        self.btn_Ok.frame.origin = CGPoint(x: UIScreen.mainScreen().bounds.width - 130, y: 300)
        self.btn_Ok.setTitle("Ok", forState: .Normal)
        self.btn_Ok.setTitle("Ok", forState: .Highlighted)
        self.btn_Ok.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        self.btn_Ok.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        self.btn_Ok.backgroundColor = UIColor.brownColor()
        self.btn_Ok.addTarget(self, action: "actionButton:", forControlEvents: .TouchUpInside)
        self.view_Background.addSubview(self.btn_Ok)
        
        //Loading View
        self.indicator_Loading = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
        self.indicator_Loading.hidesWhenStopped = true
        self.indicator_Loading.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height / 2)
        self.indicator_Loading.color = UIColor.blackColor()
        self.view_Background.addSubview(self.indicator_Loading)
    }
    func actionButton(sender: UIButton){
        self.indicator_Loading.startAnimating()
        let user_username:String = self.tx_userName.text!
        let user_password:String = self.tx_userPassword.text!
//        let user_username:String = "crwirz"
//        let user_password:String = "testtest"
        let headers: Dictionary = ["X-Apple-Device-Id": UIDevice.currentDevice().identifierForVendor!.UUIDString]
        let params: Dictionary = ["user_username": user_username, "user_password": user_password]
        let WYA: WhereYouAt = WhereYouAt()
        
        WYA.User.login(params, headers: headers){ (response) -> Void in
            let success = response["success"] as! Bool
            dispatch_async(dispatch_get_main_queue()) {
                self.indicator_Loading.stopAnimating()
                if (success){
                    let userTest: NSDictionary? = response["user"] as! NSDictionary!
                    if userTest != nil {
                        // knowing it will cast as a dictionary, we cast it again as a traversable dictionary (the optional type is not traversable)
                        let user: NSDictionary = response["user"] as! NSDictionary!
                        //
                        // this is where the front-end magic happens
                        //
                        // commands such as println("user=\(user)") will help see what is going on
                        //
                        // below is the 100% safest way to handle the optional parameters
                        for (key, value) in user {
                            // this is the absolute safest way to check for a parameter
                            if key as! String == "user_display_name" {
                                print(value as! String)
                            }
                        }
                         let vc = PublicViewController(nibName: "PublicViewController", bundle: nil)
                         let navigationController = UINavigationController(rootViewController: vc)
                         self.presentViewController(navigationController, animated: false, completion: nil)
                    }
                } else {
                    let message = WYA.User.Result["message"] as? String
                    if message == nil {
                        let message = WYA.User.Error
                    }
                    let alertView = UIAlertView()
                    alertView.addButtonWithTitle("OK")
                    alertView.title = "WARNING"
                    alertView.message = message
                    alertView.show()
                    return
                }
            }
        }
    }
}
