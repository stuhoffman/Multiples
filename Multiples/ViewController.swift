//
//  ViewController.swift
//  Multiples
//
//  Created by Stuart Hoffman on 2/18/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //props
    var startingValue: Int? = 0
    var currentSum: Int = 0
    
    //outlets
    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var addText: UITextField!
    @IBOutlet var multipleText: UITextField!
    @IBOutlet var addButton: UIButton!
    @IBOutlet var playButton: UIButton!

    
    //actions
    @IBAction func AddPressed(sender: UIButton) {
        if (addIsValid())
        {
            startingValue = Int(multipleText.text!)
            currentSum = currentSum + startingValue!
        }
        
        addText.text = "\(currentSum)"
    }
    
    @IBAction func PlayPressed(sender: UIButton)
    {
        logoImage.hidden = true
        multipleText.hidden = true
        playButton.hidden = true
        
        addText.hidden = false
        addButton.hidden = false
    }
    
    /*Tells us that the input value is not nil
    and not empty space
    */
    func addIsValid() -> Bool {
        if (multipleText.text != nil && multipleText.text != "")
        {
            return true
        }
        return false
    }
    
    
}

