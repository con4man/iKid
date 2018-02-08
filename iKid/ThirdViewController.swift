//
//  ThirdViewController.swift
//  iKid
//
//  Created by Connor Hawthorne on 2/6/18.
//  Copyright © 2018 Connor Hawthorne. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Question.text = question
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    let question = "How do you make a water bed more bouncy?"
    let punchLine = "Use spring water!"
    var questionView = false
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        if questionView {
            Question.text = question
            UIView.transition(with: Question, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
            Next.setTitle("Next", for: .normal)
            questionView = false
        } else {
            Question.text = punchLine
            UIView.transition(with: Question, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            Next.setTitle("Back", for: .normal)
            questionView = true
        }
    }
    
}
