//
//  DiagnosedHappinessViewController.swift
//  Psychologist
//
//  Created by Bill Barbour on 5/31/15.
//  Copyright (c) 2015 SograSoftware LLC. All rights reserved.
//

import UIKit

class DiagnosedHappinessViewController : HappinessViewController {
    
    override var happiness: Int {
        didSet {
            
        }
    }
    var diagnosticHistory = [String]()
    
    private struct History {
        static let SegueIdentifier = "Show Diagnostc History"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case History.SegueIdentifier:
                if let tvc = segue.destinationViewController as? HistoryViewController {
                    tvc.text = "\(diagnosticHistory)"
                }
            default: break
            }
        }
    }
}
