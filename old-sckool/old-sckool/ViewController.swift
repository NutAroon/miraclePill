//
//  ViewController.swift
//  old-sckool
//
//  Created by Nut Aroonrunangaram on 8/21/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLbl: UILabel!
    
    var phrases = ["สวัสดี\n","ทดสอบ\n","การวนลูป\n","เทส\n","โย่วๆ\n","สบายยยยยย\n"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLbl.text = ""
        var x = 0
        
        for x in 0 ..< phrases.count {
            
            var txt = mainLbl.text!
            
            txt += phrases[x]
            
            mainLbl.text = txt
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

