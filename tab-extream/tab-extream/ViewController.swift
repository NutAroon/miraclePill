//
//  ViewController.swift
//  tab-extream
//
//  Created by Nut Aroonrunangaram on 8/20/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //outlet
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howmanyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tabBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed (sender: UIButton!) {
        
        if howmanyTapsTxt?.text != nil && howmanyTapsTxt?.text != "" {
            logoImg?.hidden = true
            playBtn?.hidden = true
            howmanyTapsTxt?.hidden = true
            
            tabBtn?.hidden = false
            tapsLbl?.hidden = false
            
            maxTaps = Int((howmanyTapsTxt?.text)!)!
            currentTaps = 0
            updateTapsLabel()
            
        }
    }
    func isGameOver () -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel () {
        tapsLbl?.text = "\(currentTaps) Taps"
        
    }
    
    func restartGame () {
        maxTaps = 0
        howmanyTapsTxt?.text = ""
       
        logoImg?.hidden = false
        playBtn?.hidden = false
        howmanyTapsTxt?.hidden = false
        
        tabBtn?.hidden = true
        tapsLbl?.hidden = true
    }
}

