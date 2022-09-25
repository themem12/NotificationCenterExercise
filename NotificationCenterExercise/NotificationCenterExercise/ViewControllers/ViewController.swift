//
//  ViewController.swift
//  NotificationCenterExercise
//
//  Created by Guillermo Saavedra Dorantes on 24/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped() {
        guard let name = nameTextField.text, name != "", let email = emailTextField.text, email != "" else { return }
        let loginResponse = ["userInfo": ["userName": name, "userEmail": email]]
        NotificationCenter.default.post(name: .loginSuccess, object: nil, userInfo: loginResponse)
        self.dismiss(animated: true)
    }

    @IBAction func closeTapped(_ sender: Any) {
        NotificationCenter.default.post(name: .loginClose, object: nil)
        self.dismiss(animated: true)
    }
    
}

