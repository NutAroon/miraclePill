//
//  Kimara.swift
//  rpgoop
//
//  Created by Nut Aroonrunangaram on 9/3/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import Foundation

class Kimara: Enemy{
    
    let IMMUNE_MAX = 15

    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack (attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
    
    
}
