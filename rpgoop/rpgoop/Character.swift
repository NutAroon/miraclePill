//
//  Character.swift
//  rpgoop
//
//  Created by Nut Aroonrunangaram on 9/3/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPwr = 15
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var isAlive: Bool {
        if hp <= 0 {
            return false
        } else {
            return true
        }
    }
    
    init(startingHp: Int,attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool{
        self._hp -= attackPwr
        
        return true
    }
    
}