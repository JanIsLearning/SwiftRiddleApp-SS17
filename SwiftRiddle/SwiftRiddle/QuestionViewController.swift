//
//  QuestionViewController.swift
//  SwiftRiddle
//
//  Created by Jan Schwebel on 10.04.17.
//  Copyright © 2017 Jan Schwebel. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    var correctAnswer = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = "Für welche Farbe steht #FF0000?"
        answerButton1.setTitle("Grün", for: .normal)
        answerButton2.setTitle("Rot", for: .normal)
        answerButton3.setTitle("Blau", for: .normal)
        answerButton4.setTitle("Orange", for: .normal)
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        checkAnswer(1)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        checkAnswer(2)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        checkAnswer(3)
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        checkAnswer(4)
    }
    
    func checkAnswer(_ answer: Int) {
        if answer == correctAnswer {
            presentAlert(withTitle: "Richtig 👍")
        } else {
            presentAlert(withTitle: "Leider falsch")
        }
    }
    
    func presentAlert(withTitle title: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
