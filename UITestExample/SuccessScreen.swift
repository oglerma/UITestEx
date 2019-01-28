//
//  SuccessScreen.swift
//  UITestExample
//
//  Created by Ociel Lerma on 1/27/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit

class SuccessScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupCongratsScreen()
    }
    
    /*************************************************
     * successTextView label
     **************************************************/
    
    let successTextView: UITextView = {
        let fulltext = UITextView()
        let font = UIFont.systemFont(ofSize: 20)
        //Set the first world
        let attributedTitle = NSMutableAttributedString(string: "You are here",
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                     NSAttributedString.Key.font: font])
        
        fulltext.attributedText = attributedTitle
        fulltext.isEditable = false
        fulltext.isScrollEnabled = false
        fulltext.textAlignment = .center
        
        // There is a white box area around this text field. So setting it to
        // clear makes it show correctly.
        fulltext.backgroundColor = UIColor.clear
        
        return fulltext
        
    }()
    
    
    private func setupCongratsScreen(){
        view.addSubview(successTextView)
        successTextView.anchors(top: view.centerYAnchor, topPad: 0,
                                bottom: nil, bottomPad: 40,
                                left: view.leftAnchor, leftPad: 12,
                                right: view.rightAnchor, rightPad: 12,
                                height: 30, width: 0)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
