//
//  ViewController.swift
//  NotificationCentre(practice with textField)
//
//  Created by Сергей Голенко on 12.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var password = "0000"

    @IBOutlet weak var textFieldpassword: UITextField!
    
    
    
    @IBAction func RegistrationButton(_ sender: Any) {
    }
    
    
    @IBAction func goBotton(_ sender: UIButton) {
        if password == textFieldpassword.text {
            print("It is right password")
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(forName:NSNotification.Name(rawValue: "newPassword"), object: nil, queue: OperationQueue.main) { (newController) in
            let controller = newController.object as! RegistrationViewController
            self.password = controller.registrationTextField.text!
        }
    }


}

