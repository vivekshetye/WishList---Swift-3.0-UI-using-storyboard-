//
//  DeleteItemController.swift
//  Assignment_5
//
//  Created by Vivek Shetye on 10/29/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import UIKit

class DeleteItemController: UIViewController {

    @IBOutlet weak var itemNameTextField: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        itemNameTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        
        if itemNameTextField.text == "" {
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Please give valid input", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        } else {
            let deleteCheck = WishList.sharedInstance.delete(itemNameTextField.text!)
            if deleteCheck   {
                // create the alert
                let alert = UIAlertController(title: "Delete", message: "Item was deleted successfully.", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else {
                // create the alert
                let alert = UIAlertController(title: "Delete Failed", message: "Could not find the item!", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
        }

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
