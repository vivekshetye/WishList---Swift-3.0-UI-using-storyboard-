//
//  DisplayItemsController.swift
//  Assignment_5
//
//  Created by Vivek Shetye on 10/29/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import UIKit

class DisplayItemsController: UIViewController {

    @IBOutlet weak var displayitemsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDisplayView()
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
    func setDisplayView() {
        var displayItems = ""
        if WishList.sharedInstance.wishList.count == 0 {
            // create the alert
            
            displayItems = displayItems + " Your Wishlist is empty "
            displayitemsTextView.text = displayItems
            
        } else {
            for i in 0...WishList.sharedInstance.wishList.count-1 {
                
                
                
              
                
                
                displayItems = displayItems +  " Item name: \(WishList.sharedInstance.wishList[i].itemName!) \n Item type: \(WishList.sharedInstance.wishList[i].itemType!) \n Store name : \(WishList.sharedInstance.wishList[i].store!.storeName!) \n\n"
                                //            if( i != WishList.sharedInstance.wishList.count-1 ) {
                //                let lineView = UIView(frame: CGRect(x: 20.0, y: Double(counter + 10), width: 250.0, height: 1.0))
                //                lineView.layer.borderWidth = 1.0
                //                lineView.layer.borderColor = UIColor.black.cgColor
                //                view.addSubview(lineView)
                //            }
                
                //        for i in 0...WishList.sharedInstance.wishList.count-1 {
                //            itemName.insertText("Item name: \(WishList.sharedInstance.wishList[i].itemName!)\n\n")
                //            if( i != WishList.sharedInstance.wishList.count-1 ) {
                //                                itemName.insertText("_______________________________________________\n\n")
                //                            }
                //        }
                
                
            }
            
            displayitemsTextView.text = displayItems
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
