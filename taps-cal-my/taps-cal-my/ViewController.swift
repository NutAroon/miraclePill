//
//  ViewController.swift
//  taps-cal-my
//
//  Created by Nut Aroonrunangaram on 8/20/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calNumber : Int = 0
    var i :Int = 1
    var sum : Int = 0

    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var PlayBtn: UIButton!
    @IBOutlet weak var AddTxt: UITextField!
    
    @IBOutlet weak var CalLbl: UILabel!
    @IBOutlet weak var AddBtn: UIButton!
    
    @IBAction func addBtnPressed(sender: UIButton) {
        i = i + 1
        sum = i*calNumber
        
        updateCalLabel()
        
        if gameOver() {
            resetGame()
        }
    }
    
    @IBAction func calPlay (sender: UIButton) {
        
        if AddTxt.text != nil && AddTxt.text != "" {
            Logo.hidden = true
            PlayBtn.hidden = true
            AddTxt.hidden = true
            
            CalLbl.hidden = false
            AddBtn.hidden = false
            
            calNumber = Int(AddTxt.text!)!
            sum = calNumber
            updateCalLabel()
        }
        
    }
    
    func gameOver() -> Bool{
        if i >= 12 {
            return true
        } else {
            return false
        }
    }
    
    func updateCalLabel() {
        CalLbl?.text = "\(calNumber) x \(i) = \(sum)"
    }
    
    func resetGame() {
        Logo.hidden = false
        PlayBtn.hidden = false
        AddTxt.hidden = false
        
        CalLbl.hidden = true
        AddBtn.hidden = true
        
        AddTxt.text = ""
    }

}

