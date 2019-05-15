//
//  ViewController.swift
//  InSTATly!
//
//  Created by Ale Escalante on 4/27/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var newButton: UIButton!
    @IBOutlet weak var continuePressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   

    @IBAction func startNewPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "StartNew", sender: self)
    }
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ContinueToTableV", sender: self)
    }
    

}
