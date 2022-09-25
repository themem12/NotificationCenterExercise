//
//  NotificationCenterExtensions.swift
//  NotificationCenterExercise
//
//  Created by Guillermo Saavedra Dorantes on 24/09/22.
//

import Foundation

extension Notification.Name {
    static var loginSuccess: Notification.Name {
        return .init(rawValue: "UserLogin.success")
    }
    
    static var loginClose: Notification.Name {
        return .init(rawValue: "UserLogin.cancel")
    }
}
