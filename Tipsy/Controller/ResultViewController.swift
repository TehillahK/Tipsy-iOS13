//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Tehillah Kangamba on 2025-01-24.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var answerValLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    var answer: Float = 0.0
    var numPeople: String = ""
    var tip: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        answerValLabel.text = String( format: "%.2f",answer)
        detailsLabel.text = "Split between \(numPeople) people, with \(tip)% tip."
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
