//
//  AddItemController.swift
//  Assignment_5
//
//  Created by Vivek Shetye on 10/29/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import UIKit

class AddItemController: UIViewController {

    
    @IBAction func resetToolAction(_ sender: Any) {
        resetFields()
        
    }
    @IBAction func submitToolBarAction(_ sender: Any) {
        let itemNamecheck = itemNameTextField.text!
        let itemDescCheck = itemDescTextField.text!
        let itemPriceCheck = itemPriceTextField.text!
        let itemTypeCheck = itemTypeTextField.text!
        let storeNameCheck = storeNameTextField.text!
        let storePhoneCheck = storePhoneTextField.text!
        let storeAddressCheck = storeAddressTextField.text!
        
        if (itemNamecheck == "") || (itemDescCheck == "") || Float(itemPriceCheck) == nil || (itemTypeCheck == "") || (storeNameCheck == "") || Int64(storePhoneCheck) == nil || (storeAddressCheck == "") {
            
            if Float(itemPriceTextField.text!) == nil {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid item price", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else if Int64(storePhoneTextField.text!) == nil {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid store phone", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else {
                
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid input", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
            
        } else {
            let store = Store( storeAddressTextField.text!, Int64(storePhoneTextField.text!)!, storeNameTextField.text!)
            let item = Item(itemNameTextField.text!, itemDescTextField.text!, Float(itemPriceTextField.text!)!, itemTypeTextField.text!, store)
            WishList.sharedInstance.additem(item)
            
            // create the alert
            let alert = UIAlertController(title: "Success", message: "Item was created successfully.", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            // resetFields()
        }

        
    }
    @IBOutlet weak var itemNameTextField: UITextField!
    
    
    
    
    @IBOutlet weak var itemDescTextField: UITextField!
    @IBOutlet weak var itemTypeTextField: UITextField!
    @IBOutlet weak var itemPriceTextField: UITextField!
    
    
    
    
    @IBOutlet weak var storeNameTextField: UITextField!
    
    @IBOutlet weak var storeAddressTextField: UITextField!
    
    @IBOutlet weak var storePhoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemNameTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
        //Looks for single or multiple taps.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func resetFields() {
        itemNameTextField.text = ""
        itemDescTextField.text = ""
        itemPriceTextField.text = ""
        itemTypeTextField.text = ""
        storeNameTextField.text = ""
        storeAddressTextField.text = ""
        storePhoneTextField.text = ""
    }
    
    @IBAction func submitButtonTriggered(_ sender: UIButton) {
        
        let itemNamecheck = itemNameTextField.text!
        let itemDescCheck = itemDescTextField.text!
        let itemPriceCheck = itemPriceTextField.text!
        let itemTypeCheck = itemTypeTextField.text!
        let storeNameCheck = storeNameTextField.text!
        let storePhoneCheck = storePhoneTextField.text!
        let storeAddressCheck = storeAddressTextField.text!
        
        if (itemNamecheck == "") || (itemDescCheck == "") || Float(itemPriceCheck) == nil || (itemTypeCheck == "") || (storeNameCheck == "") || Int64(storePhoneCheck) == nil || (storeAddressCheck == "") {
            
            if Float(itemPriceTextField.text!) == nil {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid item price", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else if Int64(storePhoneTextField.text!) == nil {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid store phone", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else {
                
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid input", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
            
        } else {
            let store = Store( storeAddressTextField.text!, Int64(storePhoneTextField.text!)!, storeNameTextField.text!)
            let item = Item(itemNameTextField.text!, itemDescTextField.text!, Float(itemPriceTextField.text!)!, itemTypeTextField.text!, store)
            WishList.sharedInstance.additem(item)
            
            // create the alert
            let alert = UIAlertController(title: "Success", message: "Item was created successfully.", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            // resetFields()
        }
        
        

        
    }

}
