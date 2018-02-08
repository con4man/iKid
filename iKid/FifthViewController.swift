//
//  FifthViewController.swift
//  iKid
//
//  Created by Connor Hawthorne on 2/7/18.
//  Copyright © 2018 Connor Hawthorne. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Image.setImage(image1, for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Image: UIButton!
    @IBOutlet weak var Next: UIButton!
    
    let image1 = UIImage(named: "pic1.png")
    let image2 = UIImage(named: "pic2.png")
    let image3 = UIImage(named: "pic3.png")
    var questionView = 0


    @IBAction func imagePressedOn(_ sender: Any) {
        if questionView == 0 {
            questionView = 1
            Image.setImage(image2, for: .normal)
            Next.setTitle("Next", for: .normal)
            UIView.transition(with: Image, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
        } else if questionView == 1 {
            questionView = 2
            Image.setImage(image3, for: .normal)
            Next.setTitle("Back", for: .normal)
            UIView.transition(with: Image, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
        } else if questionView == 2{
            questionView = 0
            Image.setImage(image1, for: .normal)
            Next.setTitle("Next", for: .normal)
            UIView.transition(with: Image, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    
}
