//
//  ResultsViewController.swift
//  InSTATly!
//
//  Created by Ale Escalante on 5/13/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var regressionLabel: UILabel!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    var problemsArray: [String] = []
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = nameTextField{
            nameTextField.text = name
        }
        // if saveButtonPressed -- append name to problemsArray
        nameTextField.becomeFirstResponder()

    }
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "saveToTable" {
            let source = segue.source as! ResultsViewController
            let destination = segue.destination as! SavedProblemsViewController
            destination.tableView.insertRows(at: problemsArray[IndexPath], with: .bottom)
            destination.cell.textLabel? = source.name
        }
        
        func enableDisableSaveButton(){
            if let nameTextFieldCount = nameTextField.text?.count , nameTextFieldCount > 0{
                saveBarButton.isEnabled = true
            }else{
                saveBarButton.isEnabled = false
            }
            
        }
        
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        func saveButtonPressed(_ sender: UIBarButtonItem) {
            name = nameTextField.text
            performSegue(withIdentifier: "saveToTable", sender: self)
            
        }
    }
    
        func nameTextField(_ sender: UITextField) {
         enableDisableSaveButton()
    }
        
}
    
    /*    // MARK: - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
