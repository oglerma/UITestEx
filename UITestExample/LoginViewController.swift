//
//  LoginViewController.swift
//  UITestExample
//
//  Created by Ociel Lerma on 1/27/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.


import UIKit

class LoginViewController: UIViewController {
    
 
    let userName = "FakeName"
    let passWord = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.6394235492, green: 0.8606024384, blue: 0.7869601846, alpha: 1)
        setUpInputFields()
    }
    
    
    /*************************************************
     * TEXTVIEWS,TEXTFIELDS AND BUTTONS
     * INITIALTEXT, EMAIL, PASSWORD, LOGIN, FORGOTPASSWORD & HAVEACCOUNTBUTTON
     **************************************************/
    
    let loginTitleText: UITextView = {
        let fulltext = UITextView()
        let font = UIFont.systemFont(ofSize: 45)
        //Set the first world
        let attributedTitle = NSMutableAttributedString(string: "UITestEx",
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                     NSAttributedString.Key.font: font])
        
        fulltext.attributedText = attributedTitle
        fulltext.isEditable = false
        fulltext.isScrollEnabled = false
        fulltext.textAlignment = .center
        
        // There is a white box area around this text field. So setting it to
        // clear makes it show correctly.
        fulltext.backgroundColor = UIColor.clear
        
        // Adding a accessability Label for Conducting UITest
        fulltext.accessibilityLabel = "LoginTextLabel"
        
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
        
        // Adding a accessability Label for Conducting UITest
        e.accessibilityLabel = "emailLabel"
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
        
        
        // Adding a accessability Label for Conducting UITest
        p.accessibilityLabel = "passwordLabel"
        
        return p
    }()
    
    let loginButton: UIButton = {
        let l = UIButton(type: .system)
        l.setTitleColor(.white, for: .normal)
        l.setTitle("Log In", for: .normal)
        l.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        // Adding a accessability Label for Conducting UITest
        l.accessibilityLabel = "loginbtnLabel"
        return l
    }()
    
    @objc func handleLogin(){
       
        print("Inside handleLogin")
        
        guard let userInputEmail = emailTextField.attributedText?.string else {return}
        guard let userpassWordInput = passwordTextField.attributedText?.string else {return}
        
        print("This is our email \(userInputEmail) and this is our password \(userpassWordInput)")
        
        
        if userpassWordInput != userName && userInputEmail != passWord {
            presentAlert(with: "ERROR", message: "This is not correct")
        }

        
    }
    
    private func presentAlert(with title: String, message: String){
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(.init(title: "OK", style: .default, handler: nil))
        present(alertVC, animated: true)
        
    }
    
    let forgotPasswordButton: UIButton = {
        let f = UIButton(type: .system)
        f.setTitleColor(.white, for: .normal)
        f.setTitle("Forgot password?", for: .normal)
        // Adding a accessability Label for Conducting UITest
        f.accessibilityLabel = "forgotPasswordLabel"
        return f
    }()
    
    let dontHaveAccountBtn: UIButton = {
        let color = UIColor.black
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
        
        // Adding a accessability Label for Conducting UITest
        h.accessibilityLabel = "dontHaveAccountLabel"
        return h
    }()
    
    
    
    
    /*************************************************
     * CALLS ALL THE VIEWS IN THE LOGINPAGE
     **************************************************/
    fileprivate func setUpInputFields(){
        
        setupLoginTitleText()
        textInputStackView()
        setupHaveAccountButton()
        
    }
    
    
    /*************************************************
     * SETTING THE INITIAL TITLE TEXT INTO THE VIEW (Stack 01)
     **************************************************/
    fileprivate func setupLoginTitleText(){
        
        view.addSubview(loginTitleText)
        loginTitleText.anchors(top: view.firstBaselineAnchor, topPad: 100,
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


