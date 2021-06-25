//
//  ViewController.swift
//  One Damn Thing
//
//  Created by C. Jordan Ball III on 6/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = storyBrain.stories[0].title;
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal);
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal);
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.setCurrentStory(storyBrain.currentStory, sender.tag);
        updateUI();
    }
    
    func updateUI() -> Void {
        storyLabel.text = storyBrain.stories[storyBrain.currentStory].title;
        choice1Button.setTitle(storyBrain.stories[storyBrain.currentStory].choice1, for: .normal);
        choice2Button.setTitle(storyBrain.stories[storyBrain.currentStory].choice2, for: .normal);
    }
    
}

