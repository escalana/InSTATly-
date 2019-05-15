//
//  InputXYValuesViewController.swift
//  InSTATly!
//
//  Created by Ale Escalante on 5/12/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class InputXYValuesViewController: UIViewController {
    
    @IBOutlet weak var x1: UITextField!
    @IBOutlet weak var x2: UITextField!
    @IBOutlet weak var x3: UITextField!
    @IBOutlet weak var x4: UITextField!
    @IBOutlet weak var x5: UITextField!
    @IBOutlet weak var x6: UITextField!
    @IBOutlet weak var x7: UITextField!
    @IBOutlet weak var x8: UITextField!
    @IBOutlet weak var x9: UITextField!
    @IBOutlet weak var x10: UITextField!
    @IBOutlet weak var x11: UITextField!
    @IBOutlet weak var x12: UITextField!
    @IBOutlet weak var y1: UITextField!
    @IBOutlet weak var y2: UITextField!
    @IBOutlet weak var y3: UITextField!
    @IBOutlet weak var y4: UITextField!
    @IBOutlet weak var y5: UITextField!
    @IBOutlet weak var y6: UITextField!
    @IBOutlet weak var y7: UITextField!
    @IBOutlet weak var y8: UITextField!
    @IBOutlet weak var y9: UITextField!
    @IBOutlet weak var y10: UITextField!
    @IBOutlet weak var y11: UITextField!
    @IBOutlet weak var y12: UITextField!
    @IBOutlet weak var nValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    func findn() -> Double {
        let result = nValue.text?.doubleValue
        return result!
    }
    
    func findXBar() -> Double {
        let x1v = x1.text?.doubleValue
        let x2v = x2.text?.doubleValue
        let x3v = x3.text?.doubleValue
        let x4v = x4.text?.doubleValue
        let x5v = x5.text?.doubleValue
        let x6v = x6.text?.doubleValue
        let x7v = x7.text?.doubleValue
        var xsum = x1v! + x2v! + x3v! + x4v! + x5v! + x6v! + x7v!
        if x8.text != ""{
            let x8v = x8.text?.doubleValue
            xsum = xsum + x8v!
            if x9.text != "" {
                let x9v = x9.text?.doubleValue
                xsum = xsum + x9v!
                if x10.text != "" {
                    let x10v = x10.text?.doubleValue
                    xsum = xsum + x10v!
                    if x11.text != "" {
                        let x11v = x11.text?.doubleValue
                        xsum = xsum + x11v!
                        if x12.text != "" {
                            let x12v = x12.text?.doubleValue
                            xsum = xsum + x12v!
                        }
                    }
                }
            }
        }
        let n = findn()
        return xsum/n
    }
    
    func findYBar() -> Double {
        let y1v = y1.text?.doubleValue
        let y2v = y2.text?.doubleValue
        let y3v = y3.text?.doubleValue
        let y4v = y4.text?.doubleValue
        let y5v = y5.text?.doubleValue
        let y6v = y6.text?.doubleValue
        let y7v = y7.text?.doubleValue
        var ysum = y1v! + y2v! + y3v! + y4v! + y5v! + y6v! + y7v!
        if y8.text != ""{
            let y8v = y8.text?.doubleValue
            ysum = ysum + y8v!
            if y9.text != "" {
                let x9v = x9.text?.doubleValue
                ysum = ysum + x9v!
                if y10.text != "" {
                    let y10v = y10.text?.doubleValue
                    ysum = ysum + y10v!
                    if y11.text != "" {
                        let y11v = y11.text?.doubleValue
                        ysum = ysum + y11v!
                        if y12.text != "" {
                            let y12v = y12.text?.doubleValue
                            ysum = ysum + y12v!
                        }
                    }
                }
            }
        }
        let n = findn()
        return ysum/n
    }
    
    func findSSEx() -> Double {
        // need to find deviations squared for each X
        let xbar = findXBar()
        var sumOfXDevSquared: Double
        let x1v = x1.text?.doubleValue
        let x1d = (x1v!-xbar)*(x1v!-xbar)
        let x2v = x2.text?.doubleValue
        let x2d = (x2v!-xbar)*(x2v!-xbar)
        let x3v = x3.text?.doubleValue
        let x3d = (x3v!-xbar)*(x3v!-xbar)
        let x4v = x4.text?.doubleValue
        let x4d = (x4v!-xbar)*(x4v!-xbar)
        let x5v = x5.text?.doubleValue
        let x5d = (x5v!-xbar)*(x5v!-xbar)
        let x6v = x6.text?.doubleValue
        let x6d = (x6v!-xbar)*(x6v!-xbar)
        let x7v = x7.text?.doubleValue
        let x7d = (x7v!-xbar)*(x7v!-xbar)
        sumOfXDevSquared = x1d + x2d + x3d + x4d + x5d + x6d + x7d
        if x8.text != ""{
            let x8v = x8.text?.doubleValue
            let x8d = (x8v! - xbar)*(x8v! - xbar)
            sumOfXDevSquared = sumOfXDevSquared + x8d
            if x9.text != "" {
                let x9v = x9.text?.doubleValue
                let x9d = (x9v! - xbar)*(x9v! - xbar)
                sumOfXDevSquared = sumOfXDevSquared + x9d
                if x10.text != "" {
                    let x10v = x10.text?.doubleValue
                    let x10d = (x10v! - xbar)*(x10v! - xbar)
                    sumOfXDevSquared = sumOfXDevSquared + x10d
                    if x11.text != "" {
                        let x11v = x11.text?.doubleValue
                        let x11d = (x11v! - xbar)*(x11v! - xbar)
                        sumOfXDevSquared = sumOfXDevSquared + x11d
                        if x12.text != "" {
                            let x12v = x12.text?.doubleValue
                            let x12d = (x12v! - xbar)*(x12v! - xbar)
                            sumOfXDevSquared = sumOfXDevSquared + x12d
                        }
                    }
                }
            }
        }
        let n = findn()
       return sumOfXDevSquared/(n-1.0)
    }
    func covariance() -> Double {
        let xbar = findXBar()
        let ybar = findYBar()
        var sumOfXYDev: Double
        let x1v = x1.text?.doubleValue
        let y1v = y1.text?.doubleValue
        let xy1 = (x1v!-xbar)*(y1v!-ybar)
        let x2v = x2.text?.doubleValue
        let y2v = y2.text?.doubleValue
        let xy2 = (x2v!-xbar)*(y2v!-ybar)
        let x3v = x3.text?.doubleValue
        let y3v = y3.text?.doubleValue
        let xy3 = (x3v!-xbar)*(y3v!-ybar)
        let x4v = x4.text?.doubleValue
        let y4v = y4.text?.doubleValue
        let xy4 = (x4v!-xbar)*(y4v!-ybar)
        let x5v = x5.text?.doubleValue
        let y5v = y5.text?.doubleValue
        let xy5 = (x5v!-xbar)*(y5v!-ybar)
        let x6v = x6.text?.doubleValue
        let y6v = y6.text?.doubleValue
        let xy6 = (x6v!-xbar)*(y6v!-ybar)
        let x7v = x7.text?.doubleValue
        let y7v = y7.text?.doubleValue
        let xy7 = (x7v!-xbar)*(y7v!-ybar)
        sumOfXYDev = xy1 + xy2 + xy3 + xy4 + xy5 + xy6 + xy7
        // if they have x value they have to input Y value -- so just checking if they have something in the textfield for x is enough to continue
        if x8.text != "" {
            let x8v = x8.text?.doubleValue
            let y8v = y8.text?.doubleValue
            let xy8 = (x8v!-xbar)*(y8v!-ybar)
            sumOfXYDev = sumOfXYDev + xy8
            if x9.text != "" {
                let x9v = x9.text?.doubleValue
                let y9v = y9.text?.doubleValue
                let xy9 = (x9v!-xbar)*(y9v!-ybar)
                sumOfXYDev = sumOfXYDev + xy9
                if x10.text != "" {
                    let x10v = x10.text?.doubleValue
                    let y10v = y10.text?.doubleValue
                    let xy10 = (x10v!-xbar)*(y10v!-ybar)
                    sumOfXYDev = sumOfXYDev + xy10
                    if x11.text != "" {
                        let x11v = x11.text?.doubleValue
                        let y11v = y11.text?.doubleValue
                        let xy11 = (x11v!-xbar)*(y11v!-ybar)
                        sumOfXYDev = sumOfXYDev + xy11
                        if x12.text != "" {
                            let x12v = x12.text?.doubleValue
                            let y12v = y8.text?.doubleValue
                            let xy12 = (x12v!-xbar)*(y12v!-ybar)
                            sumOfXYDev = sumOfXYDev + xy12
                        }
                    }
                }
            }
        }
        let n = findn()
        return sumOfXYDev/(n-1)
    }
    func findVarX() -> Double{
        let sseX = findSSEx()
        let sseXDenominatorN = findn()
        return sseX/(sseXDenominatorN-1.0)
    }
    
}
      /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
    } */

extension String {
    var doubleValue: Double {
        return Double(self) ?? 0
    }
}
