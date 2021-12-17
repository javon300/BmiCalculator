//
//  ViewController.swift
//  BmiCalculator
//
//  Created by javon maxwell on 2021-12-16.
//

import UIKit

class ViewController: UIViewController
{
    //variables
    var name: String?
    var age: String?
    var gender: String?
    var weight = 0.0
    var height = 0.0
    var result = 0.0
    
    //UIcomponents connections
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var genderTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var unitType: UISwitch!
    
    @IBAction func calculateBtn(_ sender: UIButton)
    {
        name = nameTF.text
        age = ageTF.text
        gender = genderTF.text
        weight = NSString(string: weightTF.text!).doubleValue
        height = NSString(string: heightTF.text!).doubleValue
        if (unitType.isOn)
        {
            result = weight/height
            resultLabel.text = formatResult(result: result)
            
        }else
        {
            result = (weight/height/height)*10000
            resultLabel.text = formatResult(result: result)
        }
        
    }
    
    func formatResult(result: Double) -> String{
            return String(format: "%.6f",result)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


}

