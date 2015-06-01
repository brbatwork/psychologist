//
//  ViewController.swift
//  Psychologist
//
//  Created by Bill Barbour on 5/29/15.
//  Copyright (c) 2015 SograSoftware LLC. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    @IBAction func nothingPressed(sender: UIButton) {
        //perform the segue
        performSegueWithIdentifier("showNothing", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "showSad": hvc.happiness = 0
                case "showHappy": hvc.happiness = 100
                case "showNothing": hvc.happiness = 50
                default: hvc.happiness = 25
                }
            }
        }
    }

}

