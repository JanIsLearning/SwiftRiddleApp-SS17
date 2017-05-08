//
//  NameInputTableViewController.swift
//  SwiftRiddle
//
//  Created by Jan Schwebel on 08.05.17.
//  Copyright © 2017 Jan Schwebel. All rights reserved.
//

import UIKit

class NameInputTableViewController: UITableViewController {

    @IBOutlet weak var playerNameTextField: UITextField!
    
    var correctAnswersCount = 0
    var allQuestionsCount = 0
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let defaults = UserDefaults.standard
        defaults.set(playerNameTextField.text, forKey: "playerName")
        defaults.set(correctAnswersCount, forKey: "correctAnswers")
        defaults.set(allQuestionsCount, forKey: "allQuestions")
        
        dismiss(animated: true, completion: nil)
    }
    
}
