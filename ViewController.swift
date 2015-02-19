//
//  ViewController.swift
//  getRandomIdiom
//
//  Created by Shira Yoked on 2/18/15.
//  Copyright (c) 2015 Shira Yoked. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var getRandomIdiomButton: UIButton!
    
    @IBOutlet var textview: UITextView!
    
    var idioms = ["I am idiom 1", "I am the second idiom", "I am not the idiom"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getRandomIdiomButtonClicked(AnyObject)
    {
        randomizedText()
    }

    func randomizedText()
    {
        if idioms.count > 0
        {
            let randNum : Int = randRange(0 , upper: idioms.count - 1)
            textview.text = idioms[randNum]
            idioms.removeAtIndex(randNum)
        }
        else
        {
            textview.text = "NO MORE IDIOMS LEFT!"
        }
    }
    
    func randRange (lower: Int , upper: Int) -> Int
    {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
}

