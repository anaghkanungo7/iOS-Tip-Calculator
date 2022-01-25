//
//  ViewController.swift
//  iOS Tip Calculator
//
//  Created by Anagh Kanungo on 25/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var percentageSlider: UISlider!
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//    @IBAction func calculateTip(_ sender: Any) {
//        //        Fetch bill amount
//        let bill = Double(billAmountTextField.text!) ?? 0
//
//        //        Get total tip
//        let tipPercentages = [0.15, 0.18, 0.2, 0.25]
//        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
//        let total = bill + tip
//
//        //        Update labels
//        tipAmountLabel.text = String(format: "$%.2f", tip)
//        totalLabel.text = String(format: "$%.2f", total)
//    }
    
    @IBAction func updatePercentageFromControl(_ sender: Any) {
        let tipPercentages = [15, 18, 20, 25]
        let perc = Int( tipPercentages[tipControl.selectedSegmentIndex])
        
        //        Update label
        percentageLabel.text = String(format: "%u", perc)
        //        Keep slider in sync
        percentageSlider.value = Float(perc)
    }
    
    @IBAction func updatePercentageFromSlider(_ sender: Any) {
        let perc = Int(percentageSlider.value)
        percentageLabel.text = String(format: "%u", perc)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //        Fetch bill amount
        let bill = Double(billAmountTextField.text!) ?? 0

        //        Get total tip
        let tipPercentage = Double(percentageLabel.text ?? "") ?? 0.0
        print(tipPercentage)
        let tip = bill * (tipPercentage / 100)
        let total = bill + tip

        //        Update labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

