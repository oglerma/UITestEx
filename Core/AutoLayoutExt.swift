//
//  AutoLayoutExt.swift
//  UITestExample
//
//  Created by Ociel Lerma on 1/27/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit

extension UIView {
    func anchors(top:    NSLayoutYAxisAnchor?, topPad:    CGFloat,
                 bottom: NSLayoutYAxisAnchor?, bottomPad: CGFloat,
                 left:   NSLayoutXAxisAnchor?, leftPad:   CGFloat,
                 right:  NSLayoutXAxisAnchor?, rightPad:  CGFloat,
                 height: CGFloat             , width:     CGFloat){
        
        // This needs to equal false in order for it to show on the App screen
        self.translatesAutoresizingMaskIntoConstraints = false
        
        /******************************************************************
         * TOP & BOTTOM
         * Both top and bottom are of type NSLayoutYAxisAnchor.  Which mean that
         * they will lock to whatever view you pass it and if you comes with topPad
         * or bottomPad them it will act like a coordinates and move the object that
         * amount on the "Pad".
         **********************************************************************/
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: topPad).isActive = true
        }
        
        if let bottom = bottom {
            self.topAnchor.constraint(equalTo: bottom, constant: -bottomPad).isActive = true
        }
        
        /******************************************************************
         * LEFT & RIGHT
         **********************************************************************/
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: leftPad).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -rightPad).isActive = true
        }
        /******************************************************************
         * WIDTH & HEIGHT
         * IF you get a Zero back these will get skipped. Which mean that the views
         * does not need a width or height. Depending on what was given a zero and
         * what wasn't
         **********************************************************************/
        if height > 0 {self.heightAnchor.constraint(equalToConstant: height).isActive = true}
        if width > 0 {self.widthAnchor.constraint(equalToConstant: width).isActive = true}
        
    }
    
    
}
