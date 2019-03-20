//
//  ViewController.swift
//  Flashcard
//
//  Created by Naoki Arakawa on 2019/03/20.
//  Copyright © 2019 Naoki Arakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WDFlashCardDelegate  {
    
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var frontView: UIView!
    @IBOutlet weak var flashCard: WDFlashCard!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        flashCard.duration = 2.0
        flashCard.flipAnimation = .flipFromLeft
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: WDFlashCardDelegate methods
    
    func flipBackView(forFlashCard flashCardView: WDFlashCard) -> UIView {
        return backView
    }
    
    func flipFrontView(forFlashCard flashCardView: WDFlashCard) -> UIView {
        return frontView
    }


}

