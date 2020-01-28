//
//  SecondVC.swift
//  Passing Data Using Delegate
//
//  Created by Mohamed on 1/28/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit

protocol DataDelegate {
    
    func sendData(text: String)
}


class SecondVC: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    
    var myDelegate: DataDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    @IBAction func sendButtonPressed(_ sender: UIButton) {
        
        if let text = messageTextField.text{
            
            myDelegate.sendData(text: text)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
}
