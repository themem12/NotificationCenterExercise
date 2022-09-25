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
        self.dismiss(animated: true)
    }

    @IBAction func closeTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}

