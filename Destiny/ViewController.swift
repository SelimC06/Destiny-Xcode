//
//  ViewController.swift
//  Destiny
//
//  Created by Coskunuzer, Selim on 9/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Right: UIButton!
    @IBOutlet weak var Left: UIButton!
    @IBOutlet weak var Text: UILabel!
    var game = Destiny()
    override func viewDidLoad() {
        super.viewDidLoad()
        Text.text = game.returnStory()
        Right.setTitle(game.stories[game.currentStory].choice1, for: .normal)
        Left.setTitle(game.stories[game.currentStory].choice2, for: .normal)
        // Do any additional setup after loading the view.
    }


    @IBAction func LeftClick(_ sender: Any) {
        game.currentStory+=2
        Text.text = game.returnStory()
        Right.setTitle(game.stories[game.currentStory].choice1, for: .normal)
        Left.setTitle(game.stories[game.currentStory].choice2, for: .normal)
    }
    @IBAction func RightClick(_ sender: Any) {
        game.currentStory+=1
        Text.text = game.returnStory()
        Right.setTitle(game.stories[game.currentStory].choice1, for: .normal)
        Left.setTitle(game.stories[game.currentStory].choice2, for: .normal)
    }
    
}

