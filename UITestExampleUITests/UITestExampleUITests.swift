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
        
        
        // tap on loginbutton
        app/*@START_MENU_TOKEN@*/.buttons["LoginButtonID"]/*[[".buttons[\"loginbtnLabel\"]",".buttons[\"LoginButtonID\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCTAssert(app.alerts["ERROR"].buttons["OK"].exists, "Alert is not appearing")
        
    }
    
    
    
    func testTiTleExists(){
        
        
    }
    
    func testLoginSuccessScreen(){
        
    }
    
    func testFailedLogin(){
        
    }
    
    func testAccessability(){
        
    }
    
    


}
