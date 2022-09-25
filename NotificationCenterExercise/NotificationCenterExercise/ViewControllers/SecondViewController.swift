//
//  SecondViewController.swift
//  NotificationCenterExercise
//
//  Created by Guillermo Saavedra Dorantes on 24/09/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotificationCenter.default
            .addObserver(self, selector:#selector(loginSuccess(_:)), name:.loginSuccess, object: nil)
        NotificationCenter.default
            .addObserver(self, selector:#selector(loginClose(_:)), name:.loginClose, object: nil)
    }

    @objc func loginSuccess(_ notification: Notification) {
        guard let userInfo = notification.userInfo?["userInfo"] as? [String: String], let name = userInfo["userName"] else { return }
        messageLabel.text = "Bienvenido \(name)"
    }
    
    @objc func loginClose(_ notification: Notification) {
        messageLabel.text = "Por favor logeate"
    }
}
