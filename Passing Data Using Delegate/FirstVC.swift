//
//  ViewController.swift
//  Passing Data Using Delegate
//
//  Created by Mohamed on 1/28/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recievingMessageLAbel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        

    }


    @IBAction func PassButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "passSegue", sender: nil)
        
    }
    
   
}

extension ViewController: DataDelegate{
    
    
    func sendData(text: String) {
        
        recievingMessageLAbel.text = text
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "passSegue"{
            
            let secondVC = segue.destination as! SecondVC
            secondVC.myDelegate = self
        }
    }
}
