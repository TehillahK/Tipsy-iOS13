//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var zeroPercentTipBtn: UIButton!
    

    @IBOutlet weak var twentyPercentTipBtn: UIButton!
    @IBOutlet weak var tenPercentTipBtn: UIButton!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    var budgetLogic = BudgetLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.answer = budgetLogic.answer
            destinationVC.numPeople = "\(budgetLogic.numPeople)"
            destinationVC.tip = "\(budgetLogic.tip * 100)%"
        }
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
        
        let percentValStr: String = sender.titleLabel?.text ?? "0%"
        //percentVal
        
        let discount = Float(percentValStr[..<percentValStr.index(before: percentValStr.endIndex)])!/100.0
        
        budgetLogic.setTip(discount)
        
       // sender.tintColor = UIColor(red: 0.0, green: 176.0/255.0, blue: 107.0/255.9, alpha: 1.0)
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
    
        
        let numPeopleStr = String(format: "%.0f",sender.value)
        
        
        splitLabel.text = numPeopleStr
        
    }
    
    @IBAction func calcBtnPressed(_ sender: UIButton) {
        let numPeople = Int(splitLabel.text!)!
        let value = Float(textField.text!)!
        
        let answer = budgetLogic.calcSplit(value: value, numPeople: numPeople)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    
    
    
}

