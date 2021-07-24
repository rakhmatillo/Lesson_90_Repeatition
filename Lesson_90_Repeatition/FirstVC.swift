//
//  FirstVC.swift
//  Lesson_90_Repeatition
//
//  Created by rakhmatillo topiboldiev on 24/07/21.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func gotonextpage(_ sender: UIButton) {
        let vc = SecondVC(nibName: "SecondVC", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
  

}
