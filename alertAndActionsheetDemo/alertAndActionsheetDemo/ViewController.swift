//
//  ViewController.swift
//  alertAndActionsheetDemo
//
//  Created by Mac on 04/02/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }

    @IBAction func alertActionClick(_ sender: UIButton) {
        // Alert
        let alert = UIAlertController(title: "My Title", message: "My message", preferredStyle: .alert)
        present(alert, animated: true , completion: nil)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print(alert.textFields?.first?.text!)
        }
        
        let defaultButton = UIAlertAction(title: "Default", style: .default) { (action) in
            print("Default Button Tapped")
        }
        let destructiveButton = UIAlertAction(title: "Delete", style: .destructive) { (action) in
            print("Delete utton tapped")
        }
        alert.addTextField { (textfield) in
            textfield.placeholder = "Enter your name"
        }
        alert.addAction(destructiveButton)
        alert.addAction(defaultButton)
        alert.addAction(cancelButton)
    }
    
    @IBAction func actionSheetClick(_ sender: UIButton) {
        // Action
        let actionSheet = UIAlertController(title: "My Title", message: "My Message", preferredStyle: .actionSheet)
        present(actionSheet, animated: true, completion: nil)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel button tapped")
        }
        let defaultButton = UIAlertAction(title: "Default", style: .default) { (action) in
            print("Default Button tapped")
        }
        let destructiveButton = UIAlertAction(title: "Delete", style: .destructive) { (action) in
            print("Delete button tapped")
        }
        actionSheet.addAction(destructiveButton)
        actionSheet.addAction(defaultButton)
        actionSheet.addAction(cancelButton)
    }
}

