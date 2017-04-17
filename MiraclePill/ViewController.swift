//
//  ViewController.swift
//  MiraclePill
//
//  Created by Adrian Martinez on 4/12/17.
//  Copyright © 2017 Adrian Made This. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var viewSuccess: UIView!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var buttonStatePicker: UIButton!
    @IBOutlet weak var buttonBuyNow: UIButton!
    @IBOutlet weak var labelExtraField: UILabel!
    @IBOutlet weak var labelAnotherField: UILabel!
    @IBOutlet weak var fieldExtraField: UITextField!
    @IBOutlet weak var fieldAnotherField: UITextField!
    
    
    let states = ["Alaska", "Alabama", "Texas", "Maine", "New York", "California"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // When button is pressed, state picker is shown
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        labelExtraField.isHidden = true
        labelAnotherField.isHidden = true
        fieldExtraField.isHidden = true
        fieldAnotherField.isHidden = true
    }
    
    // Buy Now button that hides the viewForm and shows viewSuccess
    @IBAction func buttonBuyNow(_ sender: Any) {
        viewSuccess.isHidden = false
    }
    
    
    
    // Required functions for UIPickerViewDataSource and UIPickerViewDelegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Returns number of states as rows in UIPicker (dropdown menu)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // Changes the title on the button once a state is selected from the statePicker. Also hides the statePicker after selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        buttonStatePicker.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        labelExtraField.isHidden = false
        labelAnotherField.isHidden = false
        fieldExtraField.isHidden = false
        fieldAnotherField.isHidden = false
    }
}

