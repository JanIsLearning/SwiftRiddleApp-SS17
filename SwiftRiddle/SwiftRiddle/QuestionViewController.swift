//
//  QuestionViewController.swift
//  SwiftRiddle
//
//  Created by Jan Schwebel on 10.04.17.
//  Copyright © 2017 Jan Schwebel. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    var allQuestions: [Question] = []
    var currentQuestion: Question?
    
    var allQuestionsCount = 0
    var correctAnswersCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentQuestion = allQuestions.removeFirst()
        
        imageView.image = currentQuestion?.image
        questionLabel.text = currentQuestion?.questionText
        answerButton1.setTitle(currentQuestion?.answerText1, for: .normal)
        answerButton2.setTitle(currentQuestion?.answerText2, for: .normal)
        answerButton3.setTitle(currentQuestion?.answerText3, for: .normal)
        answerButton4.setTitle(currentQuestion?.answerText4, for: .normal)
        
        allQuestionsCount += 1
        title = "Frage #\(allQuestionsCount)"
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        checkAnswer(1, forButton: sender)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        checkAnswer(2, forButton: sender)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        checkAnswer(3, forButton: sender)
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        checkAnswer(4, forButton: sender)
    }
    
    func checkAnswer(_ answer: Int, forButton button: UIButton) {
        if answer == currentQuestion?.correctAnswer {
            presentAlert(withTitle: "Richtig 👍")
            button.backgroundColor = .green
            correctAnswersCount += 1
        } else {
            presentAlert(withTitle: "Leider falsch")
            button.backgroundColor = .red
        }
        button.setTitleColor(.black, for: .normal)
    }
    
    func presentAlert(withTitle title: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default) { action in
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "QuestionViewController")
            if let questionController = viewController as? QuestionViewController, self.allQuestions.count > 0 {
                questionController.allQuestions = self.allQuestions
                questionController.correctAnswersCount = self.correctAnswersCount
                questionController.allQuestionsCount = self.allQuestionsCount
                self.navigationController?.pushViewController(questionController, animated: true)
            } else {
                self.performSegue(withIdentifier: "ShowResultSegue", sender: nil)
            }
        }
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultController = segue.destination as? ResultViewController {
            resultController.correctAnswersCount = correctAnswersCount
            resultController.allQuestionsCount = allQuestionsCount
        }
    }
    
}
