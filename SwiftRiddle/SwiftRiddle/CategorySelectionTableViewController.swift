//
//  CategorySelectionTableViewController.swift
//  SwiftRiddle
//
//  Created by Jan Schwebel on 15.05.17.
//  Copyright © 2017 Jan Schwebel. All rights reserved.
//

import UIKit

class CategorySelectionTableViewController: UITableViewController {
    
    var allQuestions: [Question] = []
    var allCategories: [String] {
        var categories: [String] = []
        for question in allQuestions {
            let category = question.category
            if !categories.contains(category) {
                categories.append(category)
            }
        }
        return categories
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCategories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        cell.textLabel?.text = allCategories[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionController = segue.destination as? QuestionViewController {
            let selectedIndex = tableView.indexPathForSelectedRow?.row ?? 0
            let selectedCategory = allCategories[selectedIndex]
            
//            var filteredQuestions: [Question] = []
//            for question in allQuestions {
//                if question.category == selectedCategory {
//                    filteredQuestions.append(question)
//                }
//            }
            
//            let filteredQuestions = allQuestions.filter { (question) -> Bool in
//                return question.category == selectedCategory
//            }
            
            let filteredQuestions = allQuestions.filter { $0.category == selectedCategory }
            
            questionController.allQuestions = filteredQuestions
        }
    }
 
}
