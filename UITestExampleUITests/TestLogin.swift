//
//  UITestExampleUITests.swift
//  UITestExampleUITests
//
//  Created by Ociel Lerma on 1/21/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import XCTest

class UITestExampleUITests: XCTestCase {

    
    let accessID = AccessIdentifiers()
    let user     = User()

    
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        
        print("Inside of Tear down method")
    }
    
    /*********************************************
     * Inuputing the wrong Username and password
     **************************************************/
    func testAlertScreen(){
        
        let app = XCUIApplication()

        // Tap email and write something wrong
        app.textFields["\(accessID.emailID)"].tap()
        app.typeText("\(user.wrongEmail)")
        app.textViews["\(accessID.loginTitleID)"].tap()

        
        // Tap password field and type something wrong
        let passwordTextField = app.secureTextFields["\(accessID.passwordID)"]
        XCTAssert(passwordTextField.exists,"Sorry it password does not exist")
        passwordTextField.tap()
        passwordTextField.typeText("asfl;)")
        app.textViews["\(accessID.loginTitleID)"].tap()
        
        
        // IF email and password is not present present it.
        
        // tap on loginbutton
        app/*@START_MENU_TOKEN@*/.buttons["LoginButtonID"]/*[[".buttons[\"loginbtnLabel\"]",".buttons[\"LoginButtonID\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.alerts["ERROR"].buttons["OK"].exists, "Alert is not appearing")
        
    }
    
    /*********************************************************
     *
     ************************************************************/
    func testTiTleExists(){
        let app = XCUIApplication()
        XCTAssert(app.textViews["\(accessID.loginTitleID)"].exists, "Your title is gone")
        
        
    }
    

    /*********************************************************
     *
     ************************************************************/
    func testMissingEmailwithCorrectPassword(){
//    
//        var  correctEmail: String? = nil
//        var userEnteredPassword = ""
//        
//        let app = XCUIApplication()
//        
//        //WRITE ONLY PASSWORD
//        let passTxtFld = app.secureTextFields["\(accessID.passwordID)"]
//        passTxtFld.tap()
//        passTxtFld.typeText("\(user.correctPassword)")
//        app.textViews["\(accessID.loginTitleID)"].tap()
//        
//        
//        // GET USER EMAIL
//        if let email = app.textFields["\(accessID.emailID)"].accessibilityValue {
//            correctEmail = email
//            print("Inside email")
//        }
//        
//        
//        
//        // GET USER PASSWORD
//        if let pass = passTxtFld.value as! String {
//            userEnteredPassword = pass
//            print("Inside password")
//        }
//        
//        
//        print("We are in correct email\(userEnteredPassword)")
//        
//        if correctEmail == nil && userEnteredPassword == user.correctPassword {
//            print("I am inside")
//            app.textViews["\(accessID.loginTitleID)"].tap()
//            XCTAssert(app.alerts["ERROR"].buttons["OK"].exists, "Missing Password")
//        }
//        
//        print("Done with this")
        
    }
    

    
    
    /*********************************************************
     *
     ************************************************************/
    func testMissingEmailwithWrongPassword(){
        
    }
    
    /*********************************************************
     *
     ************************************************************/
    func testMissingPassword(){
        
    }
    
    
    /*********************************************************
     *
     ************************************************************/
    func testSuccessfulLogin(){
        
    }
    
    
    
    // test if email is there but it is not password
    // test if there is password but no email.
    // test when it it is successful
    // test going back (which you shouldn't)
    


}
