//
//  FourthViewController.swift
//  iKidTests
//
//  Created by Connor Hawthorne on 2/6/18.
//  Copyright © 2018 Connor Hawthorne. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Question.text = start
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    let start = "Knock Knock!"
    let question = "Who's there?"
    let response = "Wanda Smellmop."
    let questionTwo = "Wanda Smellmop who?"
    let punchLine = "No I don't wanna smell your 💩!"
    var questionView = 0
    
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        if questionView == 0 {
            Question.text = question
            UIView.transition(with: Question, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            Next.setTitle("Next", for: .normal)
            questionView = 1
        } else if questionView == 1{
            Question.text = response
            UIView.transition(with: Question, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
            Next.setTitle("Next", for: .normal)
            questionView = 2
        } else if questionView == 2{
            Question.text = questionTwo
            UIView.transition(with: Question, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
            Next.setTitle("Next", for: .normal)
            questionView = 3
        } else if questionView == 3{
            Question.text = punchLine
            UIView.transition(with: Question, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
            Next.setTitle("Back", for: .normal)
            questionView = 4
        } else if questionView == 4{
            Question.text = start
            UIView.transition(with: Question, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            Next.setTitle("Next", for: .normal)
            questionView = 0
        }
    }

}
