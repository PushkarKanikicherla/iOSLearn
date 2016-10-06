//
//  ViewController.swift
//  MiraclePill
//
//  Created by Kanikicherla,Pushkar K on 10/5/16.
//  Copyright © 2016 Kanikicherla,Pushkar K. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var statePicketBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    let states = ["Alaska", "Arkansas", "Alabama", "California", "New York", "Iowa"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   @IBAction func stateBtnpressed(_ sender: AnyObject) {
    statePicker.isHidden = false
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return states.count
    }
   func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return  states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePicketBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }

}

