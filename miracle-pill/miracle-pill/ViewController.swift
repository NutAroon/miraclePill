//
//  ViewController.swift
//  miracle-pill
//
//  Created by Nut Aroonrunangaram on 10/18/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var buynowBtn: UIButton!
    
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var miracleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullnameLbl: UILabel!
    @IBOutlet weak var fullnameTxtEnter: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var streetTxtEnter: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxtEnter: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var zipcodeLbl: UILabel!
    @IBOutlet weak var countryTxtEnter: UITextField!
    @IBOutlet weak var zipcodeTxtEnter: UITextField!
    
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["Bangkok" , "Chaing mai" , "Pattaya" , "Phuket" , "Khonkhan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }


    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        
        countryLbl.isHidden = true
        zipcodeLbl.isHidden = true
        countryTxtEnter.isHidden = true
        zipcodeTxtEnter.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        countryLbl.isHidden = false
        zipcodeLbl.isHidden = false
        countryTxtEnter.isHidden = false
        zipcodeTxtEnter.isHidden = false
        
        
    }
    
    @IBAction func buynowBtnPressed(_ sender: AnyObject) {
        pillImage.isHidden = true
        miracleLbl.isHidden = true
        priceLbl.isHidden = true
        divider.isHidden = true
        fullnameLbl.isHidden = true
        fullnameTxtEnter.isHidden = true
        streetLbl.isHidden = true
        streetTxtEnter.isHidden = true
        cityLbl.isHidden = true
        cityTxtEnter.isHidden = true
        stateLbl.isHidden = true
        statePickerBtn.isHidden = true
        countryLbl.isHidden = true
        zipcodeLbl.isHidden = true
        countryTxtEnter.isHidden = true
        zipcodeTxtEnter.isHidden = true
        buynowBtn.isHidden = true
        
        successImage.isHidden = false
    }
    
}

