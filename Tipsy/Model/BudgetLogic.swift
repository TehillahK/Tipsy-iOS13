//
//  BudgetLogic.swift
//  Tipsy
//
//  Created by Tehillah Kangamba on 2025-01-24.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation


struct BudgetLogic {
   // var budget: Budget? = nil
    
    var tip: Float = 0.0
    var numPeople: Int = 0
    var answer: Float = 0.0
    
    
    mutating func calcSplit(value: Float, numPeople: Int)->Float{
        
       // let budget = Budget(value: value, tip: tip, people: numPeople)
        self.numPeople = numPeople
        
        self.answer =  (value + (value * tip))/Float(numPeople)
        return (value + (value * tip))/Float(numPeople)
    }
    
    
    mutating func setTip(_ tip: Float){
        self.tip = tip
    }
    
    
}
