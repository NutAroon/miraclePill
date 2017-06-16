//
//  Verticle.swift
//  class-test
//
//  Created by Nut Aroonrunangaram on 8/28/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import Foundation


class Verticle {
    private var engine = "4 cylinder"
    private var color = "Silver"
    private var _odometer = 500
    
    var odometer: Int {
        get {
            return _odometer
        }
        
        set {
            if newValue >= _odometer {
                _odometer = newValue
            }
        }
    }
}