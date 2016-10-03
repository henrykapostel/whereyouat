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
        self.view_Background.backgroundColor = UIColor(red: 3/255, green: 141/255, blue: 214/255, alpha: 1.0)
        self.view.addSubview(self.view_Background)
        //UserName
        self.lbl_userName.frame.size = CGSize(width: 150, height: 40)
        self.lbl_userName.frame.origin = CGPoint(x: 25, y: 100)
        self.lbl_userName.text = "UserName"
        self.lbl_userName.textColor = UIColor.whiteColor()
        self.lbl_userName.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        
        self.view_Background.addSubview(self.lbl_userName)
        
        self.tx_userName.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width - 40, height: 40)
        self.tx_userName.frame.origin = CGPoint(x: 20, y: 140)
        self.tx_userName.backgroundColor = UIColor.whiteColor()
        self.tx_userName.layer.cornerRadius = 10.0
        self.tx_userName.layer.borderWidth = 0.5
        self.tx_userName.layer.borderColor = UIColor.grayColor().CGColor
        self.tx_userName.autocorrectionType = .No
        self.tx_userName.textAlignment = .Center
        self.tx_userName.textColor = UIColor(red: 3/255, green: 141/255, blue: 214/255, alpha: 1.0)
        self.tx_userName.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        
        self.view_Background.addSubview(self.tx_userName)
        
        //Password
        self.lbl_userPassword.frame.size = CGSize(width: 150, height: 40)
        self.lbl_userPassword.frame.origin = CGPoint(x: lbl_userName.frame.origin.x, y: tx_userName.frame.origin.y + tx_userName.bounds.height)
        self.lbl_userPassword.text = "Password"
        self.lbl_userPassword.textColor = UIColor.whiteColor()
        self.lbl_userPassword.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        
        self.view_Background.addSubview(self.lbl_userPassword)
        
        self.tx_userPassword.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width - 40, height: 40)
        self.tx_userPassword.frame.origin = CGPoint(x: 20, y: lbl_userPassword.frame.origin.y + 40)
        self.tx_userPassword.backgroundColor = UIColor.whiteColor()
        self.tx_userPassword.layer.cornerRadius = 10.0
        self.tx_userPassword.layer.borderWidth = 0.5
        self.tx_userPassword.layer.borderColor = UIColor.grayColor().CGColor
        self.tx_userPassword.autocorrectionType = .No
        self.tx_userPassword.secureTextEntry = true
        self.tx_userPassword.textAlignment = .Center
        self.tx_userPassword.textColor = UIColor(red: 3/255, green: 141/255, blue: 214/255, alpha: 1.0)
        self.tx_userPassword.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        
        self.view_Background.addSubview(self.tx_userPassword)
        
        //Submit button
        self.btn_Ok.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width - 40, height: 40)
        self.btn_Ok.frame.origin = CGPoint(x: 20, y: 350)
        self.btn_Ok.setTitle("Ok", forState: .Normal)
        self.btn_Ok.setTitle("Ok", forState: .Highlighted)
        self.btn_Ok.setTitleColor(UIColor(red: 3/255, green: 141/255, blue: 214/255, alpha: 1.0), forState: UIControlState.Normal)
        self.btn_Ok.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        self.btn_Ok.backgroundColor = UIColor.whiteColor()
        self.btn_Ok.addTarget(self, action: "actionButton:", forControlEvents: .TouchUpInside)
        self.btn_Ok.layer.cornerRadius = 10.0
        self.btn_Ok.layer.borderWidth = 0.5
        self.btn_Ok.layer.borderColor = UIColor.grayColor().CGColor
        self.btn_Ok.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
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
        
        WYA.User.login(params, headers: headers){ (response) -> Void in // login with username into Whereyouat
            let success = response["success"] as! Bool
            dispatch_async(dispatch_get_main_queue()) {
                self.indicator_Loading.stopAnimating()
                if (success){ // if login success, open public viewcontroller.
                    let userTest: NSDictionary? = response["user"] as! NSDictionary!
                    if userTest != nil {
                        let user: NSDictionary = response["user"] as! NSDictionary!
                        for (key, value) in user {
                            if key as! String == "user_display_name" {
                                print(value as! String)
                            }
                        }
                         let vc = PublicViewController(nibName: "PublicViewController", bundle: nil)
                         let navigationController = UINavigationController(rootViewController: vc)
                         self.presentViewController(navigationController, animated: false, completion: nil)
                    }
                } else { // if it fails, display error message
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
