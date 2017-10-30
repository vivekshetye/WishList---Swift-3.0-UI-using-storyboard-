//
//  Store.swift
//  Assignment_5
//
//  Created by Vivek Shetye on 10/29/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation

class Store {
    
    var address:String?
    var phone:Int64?
    var storeName:String?
    
    
    init(_ address:String, _ phone:Int64, _ storeName:String) {
        self.address=address
        self.phone=phone
        self.storeName=storeName
    }
    
    
    
}
