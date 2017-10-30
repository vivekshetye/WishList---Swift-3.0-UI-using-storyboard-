//
//  Item.swift
//  Assignment_5
//
//  Created by Vivek Shetye on 10/29/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation

class Item {
    
    var itemName:String?
    var itemDesc:String?
    var price:Float?
    var itemType:String?
    //var purchase:Purchase?
    var store:Store?
    
    init(_ itemName:String, _ itemDesc:String, _ price:Float, _ itemType:String, _ store:Store) {
        self.itemName=itemName
        self.itemDesc=itemDesc
        self.itemType=itemType
        self.price=price
        self.store=store
    }
    
    //    init(_ itemName:String) {
    //        self.itemName=itemName
    //    }
    
    
    
}
