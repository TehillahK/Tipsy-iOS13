//
//  BudgetLogic.swift
//  Tipsy
//
//  Created by Tehillah Kangamba on 2025-01-24.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation


struct BudgetLogic {
    let budget: Budget? = nil
    
    
    func calcSplit(value: Float, tip:Float, numPeople: Int)->Float{
        
        let budget = Budget(value: value, tip: tip, people: numPeople)
        
        return (budget.value + (budget.value * budget.tip))/Float(budget.people)
    }
}
