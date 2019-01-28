//
//  LoginViewController.swift
//  UITestExample
//
//  Created by Ociel Lerma on 1/27/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInputFields()
    }
    
    
    /*************************************************
     * TEXTVIEWS,TEXTFIELDS AND BUTTONS
     * MAPITINITIALTEXT, EMAIL, PASSWORD, LOGIN, FORGOTPASSWORD & HAVEACCOUNTBUTTON
     **************************************************/
    
    let mapItInitialText: UITextView = {
        let fulltext = UITextView()
        let font = UIFont.systemFont(ofSize: 50)
        //Set the first world
        let attributedTitle = NSMutableAttributedString(string: "Map ",
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                     NSAttributedString.Key.font: font])
        
        // Make an image to attach to String by converting image
        // into a NSAttributed string
        let imageNextToString = NSTextAttachment()
        imageNextToString.image = UIImage(named: "mapitLogo.png")
        imageNextToString.adjustsImageSizeForAccessibilityContentSizeCategory = true
        imageNextToString.bounds = CGRect(x: 0, y: 0, width: 60, height: 60)
        let image = NSAttributedString(attachment: imageNextToString)
        
        
        attributedTitle.append(image)
        
        fulltext.attributedText = attributedTitle
        fulltext.isEditable = false
        fulltext.isScrollEnabled = false
        fulltext.textAlignment = .center
        // There is a white box area around this text field. So setting it to
        // clear makes it show correctly.
        fulltext.backgroundColor = UIColor.clear
        
        return fulltext
        
    }()
    
    let emailTextField: UITextField = {
        let e = UITextField()
        
        let attributedPlaceholder = NSAttributedString(string: "Email",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.7)])
        e.attributedPlaceholder = attributedPlaceholder
        e.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        e.font = UIFont.boldSystemFont(ofSize: 14)
        
        //Make the textfield rounded.
        e.borderStyle = .roundedRect
        e.layer.borderWidth = 1.5
        e.layer.borderColor = UIColor.black.cgColor
        return e
    }()
    
    let passwordTextField: UITextField = {
        let p = UITextField()
        
        let attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.7)])
        p.attributedPlaceholder = attributedPlaceholder
        p.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        p.font = UIFont.boldSystemFont(ofSize: 14)
        p.isSecureTextEntry = true
        
        //Make the textfield rounded.
        p.borderStyle = .roundedRect
        p.layer.borderWidth = 1.5
        p.layer.borderColor = UIColor.black.cgColor
        
        return p
    }()
    
    let loginButton: UIButton = {
        let l = UIButton(type: .system)
        l.setTitleColor(.white, for: .normal)
        l.setTitle("Log In", for: .normal)
        return l
    }()
    
    let forgotPasswordButton: UIButton = {
        let f = UIButton(type: .system)
        f.setTitleColor(.white, for: .normal)
        f.setTitle("Forgot password?", for: .normal)
        return f
    }()
    
    let dontHaveAccountBtn: UIButton = {
        let color = UIColor.green
        let font = UIFont.systemFont(ofSize: 16)
        let h = UIButton(type: .system)
        // This allows us to put an extra color not conflicting with what is already out in this Page View
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account? ",
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                     NSAttributedString.Key.font: font ])
        attributedTitle.append(NSMutableAttributedString(string: "Sign up",
                                                         attributes: [NSAttributedString.Key.foregroundColor: color,
                                                                      NSAttributedString.Key.font: font]))
        h.setAttributedTitle(attributedTitle, for: .normal)
        return h
    }()
    
    
    
    
    /*************************************************
     * CALLS ALL THE VIEWS IN THE LOGINPAGE
     **************************************************/
    fileprivate func setUpInputFields(){
        
        setInitalLogo()
        textInputStackView()
        setupHaveAccountButton()
        
    }
    
    
    /*************************************************
     * SETTING THE INITIAL LOGO INTO THE VIEW (Stack 01)
     **************************************************/
    fileprivate func setInitalLogo(){
        
        view.addSubview(mapItInitialText)
        mapItInitialText.anchors(top: view.firstBaselineAnchor, topPad: 100,
                                 bottom: nil, bottomPad: 0,
                                 left: view.leftAnchor, leftPad: 70,
                                 right: view.rightAnchor, rightPad: 70,
                                 height: 80, width: 0)
        
    }
    
    
    /*************************************************
     * SETTING THE EMAIL, PASSWORD, LOGIN, AND FORGOT PASSWORD
     * INTO ONE STACKVIEW (Stack 02)
     **************************************************/
    fileprivate func textInputStackView(){
        
        let stackview = UIStackView(arrangedSubviews: [emailTextField,
                                                       passwordTextField,
                                                       loginButton,
                                                       forgotPasswordButton])
        stackview.distribution = .fillEqually
        stackview.axis = .vertical
        stackview.spacing = 10
        view.addSubview(stackview)
        stackview.anchors(top: view.centerYAnchor, topPad: 0,
                          bottom: nil, bottomPad: 30,
                          left: view.leftAnchor, leftPad: 40,
                          right: view.rightAnchor,rightPad: 40,
                          height: 150, width: 0)
    }
    
    /*************************************************
     * ALREADY HAVE AN ACCOUNT BUTTON (Stack 03)
     **************************************************/
    fileprivate func setupHaveAccountButton(){
        
        view.addSubview(dontHaveAccountBtn)
        dontHaveAccountBtn.anchors(top: nil, topPad: 0,
                                   bottom: view.lastBaselineAnchor, bottomPad: 40,
                                   left: view.leftAnchor, leftPad: 12,
                                   right: view.rightAnchor, rightPad: 12,
                                   height: 30, width: 0)
        
    }
    
    /*************************************************
     * THIS IS FOR THE ACTUAL PHONES TIME AND OTHER STUFF
     * ON THE TOP OF THE SCREEN
     **************************************************/
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
}


