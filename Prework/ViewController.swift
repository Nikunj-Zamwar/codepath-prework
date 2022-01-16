//
//  ViewController.swift
//  Prework
//
//  Created by Nikunj Zamwar on 1/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var numberOfPeopleInPartyTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISlider!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    @IBAction func calculateTip(_ sender: Any) {
        
        // Get value of slider and display
        let tipPercentageLabel = Int(tipControl.value)
        tipLabel.text = "\(tipPercentageLabel)%"
        let tipPercentage = Double(tipPercentageLabel) / 100
        
        // Get bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get number of poeple in party from text field
        let people = Double(numberOfPeopleInPartyTextField.text!) ?? 0
        
        // Get total tip by multiplying total with percentage
        let tip = bill * tipPercentage
        let total = bill + tip
        let perPerson = total / people
        
        // Update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update total and total per person
        totalLabel.text = String(format: "$%.2f", total)
        totalPerPersonLabel.text = String(format: "$%.2f", perPerson)
    }
    
}

