//
//  EventosViewController.swift
//  iEventosLPA
//
//  Created by Queralt Sosa Mompel on 7/6/17.
//  Copyright © 2017 Queralt Sosa Mompel. All rights reserved.
//

import Foundation
import UIKit

import UserNotifications // Do not forget to import this library!

class EventosViewController : UIViewController {
       
    @IBAction func añadirEvento(_ sender: Any) { // button with funtion
        
        // Notification code
        let content = UNMutableNotificationContent()
        content.title = "HOLA JUAPA"
        content.subtitle = "jeje"
        content.body = ":)"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        // ---! Notification code
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // This shall ask to user to receive notifications from our app
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound, .badge], completionHandler: {didAllow, error in
        })
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
