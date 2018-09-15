//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Karina Vicente on 9/12/18.
//  Copyright © 2018 Karina Vicente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) { //Function, runs every line underneath until it exits
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0 //bill is a variable that will not change later on that is why is called "let"
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill * tip
        tipLabel.text = String(format: "$%.2f",tip) //anything inside the paratheses that is a variable change it to whatever it's value is
        totalLabel.text = String(format: "$%.2f",total)
    }
    
}

