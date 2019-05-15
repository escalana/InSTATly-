//
//  SavedProblemsViewController.swift
//  InSTATly!
//
//  Created by Ale Escalante on 5/13/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class SavedProblemsViewController: UIViewController {
    
    @IBOutlet weak var backBarButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }

    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
       
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return problemsArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = problemsArray[indexPath.row]
        return cell
    }


}
