//
//  ViewController.swift
//  demoApp
//
//  Copyright © 2016 Henryk. All rights reserved.
//

import UIKit

var params: Dictionary = ["user_username": "crwirz"]

//
// call the API using the SDK
// a good endpoint would be WYA.User.getCurrentUser(params)
//
let desiredAPIResults: NSDictionary = [
    "zulutime": "2015-04-23T03:28:13Z",
    "user": [
        "_id": "546ae4865c3eaaf4a68b4569",
        "user_username": "crwirz",
        "user_email_addresses": [
            "crwirz@gmail.com"
        ],
        "user_first_name": "Christopher",
        "user_last_name": "Wirz",
        "user_last_update": [
            "sec": 1429759694,
            "usec": 26000
        ],
        "user_main_image_url": "https://s3.amazonaws.com/whereyouat-images/8a4dde99b66a0bcd1ff8df0048951fef2087a254ae9c9a39a51fd38bb85583b91b27336b109de028486e62e67cc8b1b27495725ebaabdf2f441afb61080e4935.png",
        "user_description": "Christopher is a full stack developer and systems engineer.",
        "user_cover_image_url": "https://s3.amazonaws.com/whereyouat-images/4e6fad7b19fd53178ac326b8a36b937acc4156bc3328d6df63cfd3927498a6090d4228232301a8be43fc6bf2aa23ba7d52fba460978dd1d99b89e4a307252c4e.jpg",
        "user_last_update_zulu": "2015-04-22T20:28:14Z",
        "user_last_update_utc": "2015-04-22 20:28:14",
        "user_last_update_standard": "04/22/2015",
        "user_last_update_ago": "0 seconds ago",
        "user_last_update_seconds": 1429759694.26,
        "current_user_can_modify": true,
        "current_user_can_content_edit": true,
        "user_display_name": "Christopher Wirz",
        "user_is_current_user": true
    ],
    "message": "crwirz was updated in the database.",
    "success": true
]

class PublicViewController: UIViewController {
    
    let imgView_Back = UIImageView()
    let imgView_Profile = UIImageView()
    let view_Background = UIView()
    let lbl_UserName = UILabel()
    let tx_UserDesription = UITextView()
    let view_UserDescription = UIView()
    let view_MainImage = UIView()
    let view_SubUserDescription = UIView()
    
    var str_coverURL : String = ""
    var str_mainURL : String = ""
    var str_UserName : String = ""
    var str_UserDescription : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func loadData(){
        let success: Bool = desiredAPIResults["success"] as! Bool!
        if (success) { // will enter the loop only if success evaluates to boolean true
            
            // first, try to see if result will cast as a dictionary, using the optional type
            let userTest: NSDictionary? = desiredAPIResults["user"] as! NSDictionary!
            if userTest != nil {
                
                // knowing it will cast as a dictionary, we cast it again as a traversable dictionary (the optional type is not traversable)
                let user: NSDictionary = desiredAPIResults["user"] as! NSDictionary!
                //
                // this is where the front-end magic happens
                //
                // commands such as println("user=\(user)") will help see what is going on
                //
                // below is the 100% safest way to handle the optional parameters
                for (key, value) in user{
                    // this is the absolute safest way to check for a parameter
                    if key as! String == "user_display_name" {
                        print(value as! String)
                        str_UserName = value as! String
                    }else if key as! String == "user_cover_image_url" {
                        str_coverURL = value as! String
                    }else if key as! String == "user_main_image_url" {
                        str_mainURL = value as! String
                    }else if key as! String == "user_description" {
                        str_UserDescription = value as! String
                    }
                    
                }
            }
        }
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
        loadInterface()
    }
    func loadInterface() {
        //Background View
        self.view_Background.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height)
        self.view_Background.backgroundColor = UIColor.brownColor()
        self.view.addSubview(self.view_Background)
        //CoverImage
        //        if let url = NSURL(string: str_coverURL) {
        //            if let data = NSData(contentsOfURL: url) {
        //                self.imgView_Back.image = UIImage(data: data)
        //            }
        //        }
        self.imgView_Back.image = UIImage(named: "background.jpg")
        self.imgView_Back.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height / 3)
        self.imgView_Back.contentMode = .Bottom
        self.view.addSubview(self.imgView_Back)
        
        // SubView
        self.view_UserDescription.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height / 3 * 2)
        self.view_UserDescription.frame.origin.x = 0
        self.view_UserDescription.frame.origin.y = self.imgView_Back.bounds.height
        self.view_UserDescription.backgroundColor = UIColor(red: 0/255, green: 104/255, blue: 74/255, alpha: 1.0)
        self.view.addSubview(self.view_UserDescription)
        
        //Subview_UserDescription
        self.view_SubUserDescription.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width - 40, height: UIScreen.mainScreen().bounds.height / 3 * 2 - UIScreen.mainScreen().bounds.width/4 - 40)
        self.view_SubUserDescription.frame.origin = CGPoint(x: 20, y: UIScreen.mainScreen().bounds.width / 4 + 20)
        self.view_SubUserDescription.backgroundColor = UIColor.whiteColor()
        addBorder(edges: [.All], SubView: self.view_SubUserDescription)
        self.view_UserDescription.addSubview(self.view_SubUserDescription)
        
        //UserName
        self.lbl_UserName.text = self.str_UserName
        self.lbl_UserName.frame.size.width = self.view_SubUserDescription.bounds.width
        self.lbl_UserName.frame.size.height = 100
        self.lbl_UserName.frame.origin = CGPoint(x: 0, y: 20)
        self.lbl_UserName.textAlignment = .Center
        self.lbl_UserName.textColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)
        self.lbl_UserName.font = UIFont(name: lbl_UserName.font.fontName, size: 30)
        self.view_SubUserDescription.addSubview(self.lbl_UserName)
        
        //UserDescription
        self.tx_UserDesription.text = self.str_UserDescription
        self.tx_UserDesription.frame.size = CGSize(width: self.view_SubUserDescription.bounds.width - 30, height: self.view_SubUserDescription.bounds.height - self.lbl_UserName.bounds.height - 30)
        self.tx_UserDesription.frame.origin = CGPoint(x: 15, y: self.lbl_UserName.frame.origin.y + self.lbl_UserName.frame.size.height)
        self.tx_UserDesription.font = UIFont(name: (self.tx_UserDesription.font?.fontName)!, size: 17)
        self.view_SubUserDescription.addSubview(self.tx_UserDesription)
        
        //MainImage_Background
        self.view_MainImage.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width/2, height: UIScreen.mainScreen().bounds.width / 2)
        self.view_MainImage.frame.origin.x = UIScreen.mainScreen().bounds.width / 4
        self.view_MainImage.frame.origin.y = self.imgView_Back.bounds.height - UIScreen.mainScreen().bounds.width / 4
        self.view_MainImage.backgroundColor = UIColor.whiteColor()
        self.view_MainImage.layer.cornerRadius = UIScreen.mainScreen().bounds.width / 4
        self.view.addSubview(self.view_MainImage)
        
        //MainImage
        //        if let url = NSURL(string: str_mainURL) {
        //            if let data = NSData(contentsOfURL: url) {
        //                self.imgView_Profile.image = UIImage(data: data)
        //            }
        //        }
        self.imgView_Profile.image = UIImage(named: "main_image.png")
        self.imgView_Profile.frame.size = CGSize(width: self.view_MainImage.bounds.width - 20, height: self.view_MainImage.bounds.height - 20)
        self.imgView_Profile.center = CGPoint(x: self.view_MainImage.bounds.width / 2, y: self.view_MainImage.bounds.height / 2)
        self.imgView_Profile.layer.masksToBounds = true
        self.imgView_Profile.layer.cornerRadius = self.imgView_Profile.bounds.width / 2
        self.imgView_Profile.contentMode = .Top
        self.view_MainImage.addSubview(self.imgView_Profile)
    }
    
    func addBorder(edges edges: UIRectEdge, SubView view: UIView, colour: UIColor = UIColor.darkGrayColor(), thickness: CGFloat = 5) -> [UIView] {
        
        var borders = [UIView]()
        
        func border() -> UIView {
            let border = UIView(frame: CGRectZero)
            border.backgroundColor = colour
            border.translatesAutoresizingMaskIntoConstraints = false
            return border
        }
        
        if edges.contains(.Top) || edges.contains(.All) {
            let top = border()
            view.addSubview(top)
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("V:|-(0)-[top(==thickness)]",
                    options: [],
                    metrics: ["thickness": thickness],
                    views: ["top": top]))
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("H:|-(0)-[top]-(0)-|",
                    options: [],
                    metrics: nil,
                    views: ["top": top]))
            borders.append(top)
        }
        
        if edges.contains(.Left) || edges.contains(.All) {
            let left = border()
            view.addSubview(left)
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("H:|-(0)-[left(==thickness)]",
                    options: [],
                    metrics: ["thickness": thickness],
                    views: ["left": left]))
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("V:|-(0)-[left]-(0)-|",
                    options: [],
                    metrics: nil,
                    views: ["left": left]))
            borders.append(left)
        }
        
        if edges.contains(.Right) || edges.contains(.All) {
            let right = border()
            view.addSubview(right)
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("H:[right(==thickness)]-(0)-|",
                    options: [],
                    metrics: ["thickness": thickness],
                    views: ["right": right]))
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("V:|-(0)-[right]-(0)-|",
                    options: [],
                    metrics: nil,
                    views: ["right": right]))
            borders.append(right)
        }
        
        if edges.contains(.Bottom) || edges.contains(.All) {
            let bottom = border()
            view.addSubview(bottom)
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("V:[bottom(==thickness)]-(0)-|",
                    options: [],
                    metrics: ["thickness": thickness],
                    views: ["bottom": bottom]))
            view.addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat("H:|-(0)-[bottom]-(0)-|",
                    options: [],
                    metrics: nil,
                    views: ["bottom": bottom]))
            borders.append(bottom)
        }
        
        return borders
    }
}

