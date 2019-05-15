//
//  PopulationModelValuesViewController.swift
//  InSTATly!
//
//  Created by Ale Escalante on 5/13/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class PopulationModelValuesViewController: UIViewController {
    
    @IBOutlet weak var nPValue: UITextField!
    @IBOutlet weak var xBar: UITextField!
    @IBOutlet weak var yBar: UITextField!
    @IBOutlet weak var sseX: UITextField!
    @IBOutlet weak var varX: UITextField!
    @IBOutlet weak var covXY: UITextField!
    @IBOutlet weak var BoLabel: UILabel!
    @IBOutlet weak var b1Label: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the vie
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getRegE1" {
            let destination = segue.destination as! ResultsViewController
            regressionLabel.text = "Y = \(BoLabel.text) + \(b1Label.text)X1 + Ɛ"
        }
    }
    
    @IBAction func readyButtonPressed(_ sender: UIButton) {
        let b1 = SolveForB1()
        let bo = SolveForBo()
        BoLabel.text = String(bo)
        b1Label.text = String(b1)
    }
    
    @IBAction func getEquationButton(_ sender: UIButton) {
        performSegue(withIdentifier: "getRegE1", sender: self)
    }
    
    func findNPValue() -> Double {
        let result = nPValue.text?.doubleValue
        return result!
    }
    func findingXbar() -> Double {
        return (xBar.text?.doubleValue)!
    }
    func findingyBar() -> Double {
        return (yBar.text?.doubleValue)!
    }
    func findingSSEx() -> Double {
        return (sseX.text?.doubleValue)!
    }
    func findingVarX() -> Double {
        return (varX.text?.doubleValue)!
    }
    func findingCovXY() -> Double {
        return (covXY.text?.doubleValue)!
    }
    func SolveForB1() -> Double {
        // sp = solving problem -- so var names are spVar
        var spVar: Double 
        var spXbar: Double
        var spCov: Double
        var spSSEx: Double
        var spN: Double
        let spB1 = spCov/spVar
        if (nPValue.text != "" && xBar.text != "" && sseX.text != ""  && covXY.text != "") {
            spN = findNPValue()
            spXbar = findingXbar()
            spSSEx = findingSSEx()
            spCov = findingCovXY()
            spVar = spSSEx/(spN-1.0)
            return spB1
        }else if (varX.text != "" && covXY.text != "") {
            spCov = findingCovXY()
            spVar = findingVarX()
            return spB1
        } else if (varX.text != "" && covXY.text != "" && nPValue.text != "" && xBar.text != "" && sseX.text != ""  ){
            spCov = findingCovXY()
            spVar = findingVarX()
            return spB1
        }else{
            return 0.0
            // make an xtra function to put a message if it return 0.0
        }
    }
        
    func SolveForBo() -> Double {
        let spYbar = findingyBar()
        let spXbar = findingXbar()
        let spB1 = SolveForB1()
        return spYbar-(spB1*spXbar)
    }
    
    @IBAction func backPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    
    }
}
