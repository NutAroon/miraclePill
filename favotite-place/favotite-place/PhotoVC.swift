//
//  PhotoVC.swift
//  favotite-place
//
//  Created by Nut Aroonrunangaram on 10/9/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class PhotoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }


}
