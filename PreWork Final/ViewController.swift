//
//  ViewController.swift
//  PreWork Final
//
//  Created by Aleena Kabir on 12/25/20.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    @IBAction func onTap(_ sender: Any) {
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        
        
        //Get initial bill amount and calculate tips
              let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        
        //Calculate tip and total
        let tip = bill * tipPercentages[tipAmountSegmentControl.selectedSegmentIndex]
let total = bill + tip
        //update tip and total labels
            tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
}

}
