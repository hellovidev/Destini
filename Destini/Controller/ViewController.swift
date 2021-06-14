//
//  ViewController.swift
//  Destini
//
//  Created by Sergey Romanchuk on 14.06.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    let storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[0].title
        choiceOne.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choiceTwo.setTitle(storyBrain.stories[0].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        //sender.currentTitle
    }
    
}

