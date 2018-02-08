//
//  SecondViewController.swift
//  iKid
//
//  Created by Connor Hawthorne on 2/6/18.
//  Copyright © 2018 Connor Hawthorne. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Question.text = question
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    let question = "Why was the programmer unhappy with his current job?"
    let punchLine = "He wanted Arrays!"
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
