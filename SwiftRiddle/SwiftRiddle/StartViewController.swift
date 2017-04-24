//
//  StartViewController.swift
//  SwiftRiddle
//
//  Created by Jan Schwebel on 10.04.17.
//  Copyright © 2017 Jan Schwebel. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    var allQuestions: [Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let question1 = Question(questionText: "Wieviele Einwohner hat Darmstadt?", answerText1: "50k", answerText2: "100k", answerText3: "150k", answerText4: "200k", correctAnswer: 3)
        let question2 = Question(questionText: "Wann wurde die h_da gegründet?", answerText1: "1956", answerText2: "1969", answerText3: "1971", answerText4: "1982", correctAnswer: 3)
        let question3 = Question(questionText: "Für welche Farbe steht #FF0000?", answerText1: "Grün", answerText2: "Rot", answerText3: "Blau", answerText4: "Orange", correctAnswer: 2)
        allQuestions = [question1, question2, question3]
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        label.text = "Hallo Darmstadt!"
        imageView.image = #imageLiteral(resourceName: "LogoDarmstadt")
        button.setTitle("Los geht's!", for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionController = segue.destination as? QuestionViewController {
            questionController.allQuestions = allQuestions
        }
    }
    
}
