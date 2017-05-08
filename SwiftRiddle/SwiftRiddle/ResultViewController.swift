//
//  ResultViewController.swift
//  SwiftRiddle
//
//  Created by Jan Schwebel on 08.05.17.
//  Copyright © 2017 Jan Schwebel. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var correctAnswersCountLabel: UILabel!
    @IBOutlet weak var allQuestionsCountLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var correctAnswersCount = 0
    var allQuestionsCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        correctAnswersCountLabel.text = "\(correctAnswersCount)"
        allQuestionsCountLabel.text = "\(allQuestionsCount)"
        
        let ratingRatio = Double(correctAnswersCount) / Double(allQuestionsCount)
        switch ratingRatio {
        case 0.0..<0.34:
            ratingLabel.text = "😡"
        case 0.34..<0.67:
            ratingLabel.text = "😴"
        case 0.67...1.0:
            ratingLabel.text = "😀"
        default:
            break
        }
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigationController = segue.destination as? UINavigationController,
            let nameInputController = navigationController.topViewController as? NameInputTableViewController {
            nameInputController.correctAnswersCount = correctAnswersCount
            nameInputController.allQuestionsCount = allQuestionsCount
        }
    }
    
}
