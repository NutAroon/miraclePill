//
//  ViewController.swift
//  rpgoop-my
//
//  Created by Nut Aroonrunangaram on 9/3/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerOneHpLbl: UILabel!
    
    @IBOutlet weak var playerTwoHpLbl: UILabel!
    
    @IBOutlet weak var restartImg: UIImageView!
    
    @IBOutlet weak var restartbtn: UIButton!
    
    @IBOutlet weak var restartLbl: UILabel!
    
    var playerOne: PlayerOne!
    var playerTwo: PlayerTwo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerOne = PlayerOne(name: "Devil Orge", startHP: 200, attackPwr: 15)
        playerTwo = PlayerTwo(name: "Golden Knight", startHP: 200, attackPwr: 15)
        
        playerOneHpLbl.text = "\(playerOne.hp) HP"
        playerTwoHpLbl.text = "\(playerTwo.hp) HP"
    }

    @IBAction func playerOneAttackBtn(sender: AnyObject) {
        if playerTwo.attemptAttack(playerOne.attackPwr) {
            printLbl.text = "Attacked \(playerTwo.name) for \(playerOne.attackPwr) HP"
            playerTwoHpLbl.text = "\(playerTwo.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if !playerTwo.isAlive {
            playerTwoHpLbl.text = ""
            printLbl.text = "\(playerOne.name) is The winner!!"
            restartGame()
        }
    }
    
    @IBAction func playerTwoAttackBtn(sender: AnyObject) {
        if playerOne.attemptAttack(playerTwo.attackPwr) {
            printLbl.text = "Attacked \(playerOne.name) for \(playerTwo.attackPwr) HP"
            playerOneHpLbl.text = "\(playerOne.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if !playerOne.isAlive {
            playerOneHpLbl.text = ""
            printLbl.text = "\(playerTwo.name) is The winner!!"
            restartGame()
        }
    }
    
    func restartGame() {
        restartImg.hidden = false
        restartbtn.hidden = false
        restartLbl.hidden = false
        
    }

    @IBAction func restartTapped(sender: AnyObject) {
        restartImg.hidden = true
        restartbtn.hidden = true
        restartLbl.hidden = true
        printLbl.text = "New game start!!"
        viewDidLoad()
    }
}
