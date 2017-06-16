//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Nut Aroonrunangaram on 10/9/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    
    @IBOutlet weak var dataEntryTextField: UITextField!

    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func sendBtnWasPressed(_ sender: AnyObject) {
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }

}
