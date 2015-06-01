//
//  HistoryViewController.swift
//  Psychologist
//
//  Created by Bill Barbour on 5/31/15.
//  Copyright (c) 2015 SograSoftware LLC. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = text
        }
    }
    
    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }
}
