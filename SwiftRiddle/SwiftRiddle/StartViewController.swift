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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        label.text = "Hallo Darmstadt!"
        imageView.image = #imageLiteral(resourceName: "LogoDarmstadt")
        button.setTitle("Los geht's!", for: .normal)
    }
    
}
