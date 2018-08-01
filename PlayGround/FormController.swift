//
//  MainController.swift
//  PlayGround
//
//  Created by Amila Kumara on 5/4/18.
//  Copyright © 2018 Infor. All rights reserved.
//

import UIKit

class FormController: UIViewController{
    @IBOutlet weak var lblSliderValue: UILabel!
    @IBOutlet weak var lblStepperValue: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var switchM: UISwitch!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    var pickerData: [String] = [String]()
    
    let nf = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nf.numberStyle = .decimal
        slider.value = 50
        lblSliderValue.text = "50"
        lblStepperValue.text = "0"
        
        // Connect data:
        self.picker.delegate = self
        self.picker.dataSource = self
        
        // Input data into the Array:
        pickerData = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderValueChange(_ sender: Any) {
        lblSliderValue.text = nf.string(from: NSNumber(value: slider.value))
    }
    @IBAction func stepperValueChange(_ sender: Any) {
        lblStepperValue.text = nf.string(from: NSNumber(value: stepper.value))
    }
    
    @IBAction func tapChangeName(_ sender: Any) {
        txtName.text = "Krypton"
    }
    
}
extension FormController:UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}

