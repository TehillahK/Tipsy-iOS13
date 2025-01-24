//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var zeroPercentTipBtn: UIButton!
    

    @IBOutlet weak var twentyPercentTipBtn: UIButton!
    @IBOutlet weak var tenPercentTipBtn: UIButton!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    @IBAction func tipButtonPressed(_ sender: UIButton) {
        
        if (tenPercentTipBtn.isSelected){
            tenPercentTipBtn.isSelected = false
            
        }
        
        if (twentyPercentTipBtn.isSelected){
            twentyPercentTipBtn.isSelected = false
        }
        
        if (zeroPercentTipBtn.isSelected){
            zeroPercentTipBtn.isSelected = false
            
        }
        
        sender.isSelected = true
       // sender.tintColor = UIColor(red: 0.0, green: 176.0/255.0, blue: 107.0/255.9, alpha: 1.0)
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
    
        
        let numPeopleStr = String(format: "%.0f",sender.value)
        
        splitLabel.text = numPeopleStr
        
    }
    
    @IBAction func calcBtnPressed(_ sender: UIButton) {
        
        
    }
    
    
}

