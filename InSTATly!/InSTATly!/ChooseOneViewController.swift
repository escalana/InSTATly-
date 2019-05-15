//
//  ChooseOneViewController.swift
//  InSTATly!
//
//  Created by Ale Escalante on 5/13/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class ChooseOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateOwnTablePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "CreateTable", sender: self)
    }
    
    @IBAction func estimatedModelButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "InputregressionValues", sender: self)
    }

    @IBAction func cancelledPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
    }
}
}

