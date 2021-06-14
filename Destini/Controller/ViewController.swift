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
    
    private var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if let choice = sender.currentTitle {
            storyBrain.checkDirection(choiceDestination: choice)
            updateUI()
        } else { return }
    }
    
    private func updateUI() {
        storyLabel.text = storyBrain.getNextStoryText()
        choiceOne.setTitle(storyBrain.getChoicesOfStory()[0], for: .normal)
        choiceTwo.setTitle(storyBrain.getChoicesOfStory()[1], for: .normal)
    }
    
}

