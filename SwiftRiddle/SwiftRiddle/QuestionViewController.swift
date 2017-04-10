//
//  QuestionViewController.swift
//  SwiftRiddle
//
//  Created by Jan Schwebel on 10.04.17.
//  Copyright © 2017 Jan Schwebel. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Leider falsch", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Leider falsch", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Richtig 👍", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Leider falsch", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
