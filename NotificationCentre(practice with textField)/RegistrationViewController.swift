//
//  RegistrationViewController.swift
//  NotificationCentre(practice with textField)
//
//  Created by Сергей Голенко on 12.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var registrationTextField: UITextField!
    
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "newPassword"), object: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
