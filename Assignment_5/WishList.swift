//
//  WishList.swift
//  Assignment_5
//
//  Created by Vivek Shetye on 10/29/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation


class WishList {
    
    var wishList:[Item]=[]
    
    
    static let sharedInstance = WishList()
    
    func additem(_ item:Item) {
        
        wishList.append(item)
        print("\nItem added successfully\n")
    }
    
    func listAllItems() {
        
        if(wishList.count <= 0) {
            print("\nNo items in your wishlist\n")
        }
        for item in wishList {
            print("\nItem name: \(item.itemName!)")
            //            print("Item description: \(item.itemDesc!)")
            //            print("Item type: \(item.itemType!)")
            //            print("Item price: \(item.price!)")
            //            print("Store name: \(item.store!.storeName!)")
            //            print("Store address: \(item.store!.address!)")
            //            print("Store contact no. : \(item.store!.phone!)\n")
            
        }
    }
    
    func searchitem(_ itemName:String) ->  [Item]{
        
        var searchedItems:[Item] = []
        for item in wishList {
            if item.itemName?.lowercased() == itemName.lowercased() {
                searchedItems.append(item)
                
            }
        }
        
        return searchedItems
        
    }
    
    func delete(_ itemName:String) -> Bool{
        var itemIndex:Int?
        if wishList.count == 0 {
            return false
        }
        for i in 0...wishList.count-1 {
            
            if wishList[i].itemName?.lowercased() == itemName.lowercased() {
                itemIndex = i
                break
            }
            
        }
        
        if itemIndex != nil {
            wishList.remove(at: itemIndex!)
            return true
            print("\nItem deleted successfully\n")
        } else {
            print("\nCould not find that item in your wishlist\n")
        }
        
        return false
    }
    
    func searchByCategory(_ categoryName:String) -> [Item]{
        
        var resItemArr:[Item] = []
        
        if(wishList.count != 0) {
        for i in 0...wishList.count-1 {
            
            if wishList[i].itemType?.lowercased() == categoryName.lowercased() {
                resItemArr.append(wishList[i])
            }
            
        }
        }
        
        return resItemArr
        
    }
    
    
}
