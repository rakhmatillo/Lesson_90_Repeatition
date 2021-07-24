//
//  SecondVC.swift
//  Lesson_90_Repeatition
//
//  Created by rakhmatillo topiboldiev on 24/07/21.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func changeLabels(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(Constants.NOTIFICATION_NAME), object: nil)
    }
    
 
}
