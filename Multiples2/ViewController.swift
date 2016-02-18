//
//  ViewController.swift
//  Multiples2
//
//  Created by Stuart Hoffman on 2/18/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    //props
    var startingValue: Int? = 0
    var currentSum: Int = 0

    //Outlets
    @IBOutlet var addText: UITextField!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var logoImage: UIImageView!
    
    @IBOutlet var displayText: UITextField!
    @IBOutlet var addButton: UIButton!
    
    //Actions
    @IBAction func addButtonPressed(sender: UIButton) {
        if (addIsValid())
        {
            currentSum = currentSum + startingValue!
        }
        
        displayText.text = "\(currentSum)"
        
    }
    @IBAction func playButtonPressed(sender: UIButton) {
        logoImage.hidden = true
        addText.hidden = true
        playButton.hidden = true
        
        displayText.hidden = false
        addButton.hidden = false
        
        startingValue = Int(addText.text!)

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        addText.resignFirstResponder()
        return true
    }
    
    func addIsValid() -> Bool {
        if (addText.text != nil && addText.text != "")
        {
            NSLog("The add is valid")
            return true
        }
        NSLog("Not Valid")
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

