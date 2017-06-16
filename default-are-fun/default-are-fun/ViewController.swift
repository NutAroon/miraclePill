//
//  ViewController.swift
//  default-are-fun
//
//  Created by Nut Aroonrunangaram on 10/17/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var favLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func red(_ sender: AnyObject) {
        favLabel.text = "Favotie color: Red"
    }

    @IBAction func yellow(_ sender: AnyObject) {
        favLabel.text = "Favotie color: Yellow"
    }
    
    @IBAction func blue(_ sender: AnyObject) {
        favLabel.text = "Favotie color: Blue"
    }
    
    
    
    
}

