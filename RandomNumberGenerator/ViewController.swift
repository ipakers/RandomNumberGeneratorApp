//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Isaac Perry on 6/10/17.
//  Copyright © 2017 Isaac Perry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var maxValue: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func generateTapped(_ sender: UIBarButtonItem) {
        let max = Int(maxValue.text!)!
        generate(max: max)
    }
    
    func generate(max: Int) {
        resultLabel.text = "\(arc4random_uniform(UInt32(max)) + 1)"
    }
    
}

