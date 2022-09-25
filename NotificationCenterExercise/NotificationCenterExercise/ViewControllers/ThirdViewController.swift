//
//  ThirdViewController.swift
//  NotificationCenterExercise
//
//  Created by Guillermo Saavedra Dorantes on 24/09/22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived(_:)), name: .loginSuccess, object: nil)
    }
    
    @objc private func notificationReceived(_ notification: Notification) {
        guard let userInfo = notification.userInfo?["userInfo"] as? [String: String] else { return }
        nameLabel.text = userInfo["userName"]
        emailLabel.text = userInfo["userEmail"]
    }

}
