//
//  ViewController.swift
//  GuessTheNumber
//
//  Created by Андрей  on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var numberToGuess: Int?
    var numberFromTF: Int {
        get {
            guard let num = textField.text,
                  let number = Int(num)
            else { return 0 }
            
            return number
        }
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberToGuess = generateNum()
        textResult.text = "Try to guess the number!"
    }
    
    @IBAction func check(_ sender: Any) {
        checkNum(userInput: numberFromTF)
    }
    
    func generateNum() -> Int {
        let randomNumber = Int.random(in: 0...100)
        
        return randomNumber
    }
    
    func checkNum(userInput: Int) {
        guard let numberToGuess = numberToGuess else { return }
        if userInput == numberToGuess {
            textResult.text = "Congratulations! You have guesed the number. It was \(numberToGuess)"
            imageView.isHidden = false
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.textResult.text = "I have generated a new number, try guess it!"
                self.imageView.isHidden = true
            }
            
            self.numberToGuess = generateNum()
            return
            
        } else if userInput > numberToGuess {
            textResult.text = "Nope, your number is too big!"
        } else {
            textResult.text = "Ohh no, your number is too small!"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.textResult.text = "Try to guess the number again!"
        }
    }
}

