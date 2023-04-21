//
//  MagicBallViewController.swift
//  GuessTheNumber
//
//  Created by Андрей  on 04.04.2023.
//

import UIKit

class MagicBallViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var ballLabel: UILabel!
    
    let magicBall = MagicBall()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didAsk(_ sender: Any) {
        if textField.hasText {
            ballLabel.isHidden = true
            let answer = magicBall.getAnswer()
            ballLabel.text = answer
            textField.text = ""
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.ballLabel.isHidden = false
            }
        }
    }
}
