//
//  ViewController.swift
//  Smart_Tip
//
//  Created by patrick on 2019/1/29.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //these are the fields
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onTap(_ sender:
        Any){
        view.endEditing(true)
    }
    @IBAction func calculatetip(_ sender: Any) {
        //bill ammout
        let bill = Double(billField.text!) ?? 0
        //calculate tip and total
        let tipP = [0.1,0.12,0.15,0.18,0.2]
        let tip = bill * tipP[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update the labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    

}

