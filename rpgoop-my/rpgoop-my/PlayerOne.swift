//
//  Player.swift
//  rpgoop-my
//
//  Created by Nut Aroonrunangaram on 9/3/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import Foundation
class PlayerOne: Character {
    private var _name: String = "PlayerOne"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, startHP: Int, attackPwr: Int){
        self.init(startHP: startHP, attackPwr: attackPwr)
        _name = name
    }
}