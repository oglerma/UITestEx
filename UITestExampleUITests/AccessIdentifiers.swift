//
//  LoginModel.swift
//  UITestExampleUITests
//
//  Created by Ociel Lerma on 1/29/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit
import XCTest



struct AccessIdentifiers {
    
    let loginTitleID =      "LoginID"
    let emailID =           "emailID"
    let passwordID =        "pID"
    let loginBtnID =        "LoginButtonID"
    let forgotPasswordID =  "forgotPasswordID"
    let dontHaveAccountID = "dontHaveAccountID"
    
    
}

struct User {
    let correctEmail =    "ebayemail@gmail.com"
    let correctPassword = "12345"
    let wrongEmail =      "amazonemail@yahoo.com"
    let wrongPassword =   "54321"
}

extension UITextField {
    func togglePasswordVisibility() {
        isSecureTextEntry = !isSecureTextEntry
        
        if let existingText = text, isSecureTextEntry {
            /* When toggling to secure text, all text will be purged if the user
             continues typing unless we intervene. This is prevented by first
             deleting the existing text and then recovering the original text. */
            deleteBackward()
            
            if let textRange = textRange(from: beginningOfDocument, to: endOfDocument) {
                replace(textRange, withText: existingText)
            }
        }
        
        /* Reset the selected text range since the cursor can end up in the wrong
         position after a toggle because the text might vary in width */
        if let existingSelectedTextRange = selectedTextRange {
            selectedTextRange = nil
            selectedTextRange = existingSelectedTextRange
        }
    }
}
