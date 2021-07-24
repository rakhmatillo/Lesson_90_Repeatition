//
//  ViewController.swift
//  Lesson_90_Repeatition
//
//  Created by rakhmatillo topiboldiev on 24/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var ageTf: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       createNotifObserver()
    }

    @IBAction func gotonextpage(_ sender: UIButton) {
//        let vc = FirstVC(nibName: "FirstVC", bundle: nil)
//        self.present(vc, animated: true, completion: nil)
        
        let user = UserDM(name: nameTF.text!, surname: surnameTF.text!, age: ageTf.text!)
        
        
        let encoder = JSONEncoder()
        if let encodedData = try? encoder.encode(user){
            UserDefaults.standard.setValue(encodedData, forKey: Constants.USER_DATA)
            
        }
        
        
        
    }
    
    @objc func notificationRecieved() {
        
    }
    @IBAction func getData(_ sender: Any) {
        if let savedData = UserDefaults.standard.object(forKey: Constants.USER_DATA) as? Data {
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(UserDM.self, from: savedData) {
                print(user, "Keldiye")
            }
        }
        
    }
    
    
    func createNotifObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(notificationRecieved), name: NSNotification.Name(Constants.NOTIFICATION_NAME), object: nil)
    }
}

