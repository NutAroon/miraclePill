//
//  Player.swift
//  rpgoop
//
//  Created by Nut Aroonrunangaram on 9/2/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import Foundation
class  Player:  Character{
    private var _name: String = "Player"
    private var _inventory = [String]()
    
    var name: String {
        get {
            return _name
        }
    }
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
    convenience init(name: String,hp: Int,attackPwr: Int) {
        self.init(startingHp: hp,attackPwr: attackPwr)
        _name = name
    }
    
}