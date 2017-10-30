//
//  SearchItemController.swift
//  Assignment_5
//
//  Created by Vivek Shetye on 10/29/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import UIKit

class SearchItemController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var pickerView: UIPickerView! = UIPickerView()
    @IBOutlet weak var searchTextView: UITextView!
    
    @IBOutlet weak var textBox: UITextField!
    
    @IBOutlet weak var textBox2: UITextField!
    
    
    
    
    @IBAction func searchClicked(_ sender: Any) {
        
        
        
            var searchList:[Item] = []
            print(textBox.text!)
            if textBox.text == ""  {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please select a valid search type!", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else {
                
                if textBox.text == "Search by item name" {
                    
                    if textBox2.text == "" {
                        // create the alert
                        let alert = UIAlertController(title: "Error", message: "Please enter search input!", preferredStyle: UIAlertControllerStyle.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                    } else {
                        searchList = WishList.sharedInstance.searchitem(textBox2.text!)
                        displaySearchResult(searchList)
                    }
                    
                } else if textBox.text == "Search by Category" {
                    
                    if textBox2.text == "" {
                        // create the alert
                        let alert = UIAlertController(title: "Error", message: "Please select search input!", preferredStyle: UIAlertControllerStyle.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                    } else {
                        searchList = WishList.sharedInstance.searchByCategory(textBox2.text!)
                        displaySearchResult(searchList)
                    }
                    
                } else {
                    // create the alert
                    let alert = UIAlertController(title: "Error", message: "Please select a valid search type!", preferredStyle: UIAlertControllerStyle.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                }
                
            }
        
    }
    var list = ["Search by item name", "Search by Category"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.removeFromSuperview()
        self.textBox.inputView = pickerView
        

        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }

    @IBOutlet var bottomView: UIView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func textFieldFocus(_ sender: Any) {
//        :NSLayoutConstraint
        bottomView.addSubview(pickerView);
    }
    func myPickerVisible() {
        view.addSubview(pickerView)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    //
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    //
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
    //
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.textBox.text = self.list[row]
        
    }
    
    func textFieldDidChange(_ textField: UITextField) {
        view.willRemoveSubview(pickerView)
        
    }
    
    @IBAction func textSearchEditChange(_ sender: Any) {
        pickerView.removeFromSuperview();
        
    }
    
    func displaySearchResult(_ searchResult: [Item]) {
        if searchResult.count != 0 {
//            var counter = 50.0
            var itemName = ""
            for i in 0...searchResult.count-1 {
                
//                let itemName = UITextView()
                //            let itemName = UITextView(frame: CGRect(x: 20.0, y: Double(counter), width: Double(UIScreen.main.bounds.width), height: 100.0))
                //itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
//                view.addSubview(itemName)
                
                
                
                
                itemName = itemName + " Item name: \(searchResult[i].itemName!) \n Item type: \(searchResult[i].itemType!) \n Store name : \(searchResult[i].store!.storeName!) \n\n"
//                itemName.font = itemName.font?.withSize(11)
//                itemName.textColor = UIColor.black
//                itemName.backgroundColor = UIColor.white
//                itemName.layer.borderColor = nil
//                itemName.layer.borderWidth = 0
//                itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//                itemName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
//                itemName.topAnchor.constraint(equalTo: searchButton.bottomAnchor, constant: CGFloat(counter)).isActive = true
//                itemName.heightAnchor.constraint(equalToConstant: itemName.contentSize.height).isActive = true
                
                
//                counter = counter + 50.0
            }
            searchTextView.text = itemName
        } else {
            let alert = UIAlertController(title: "Error", message: "No items found!", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
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
