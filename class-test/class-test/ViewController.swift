//
//  ViewController.swift
//  class-test
//
//  Created by Nut Aroonrunangaram on 8/28/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var bmw = Verticle()
        print(bmw.odometer)
        bmw.odometer = 700
        print(bmw.odometer)
        
        
    }



}

