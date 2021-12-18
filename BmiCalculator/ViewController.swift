/*
 file name: BMI Calculator main view controller
 
 Author: Matthew Maxwell
Student ID: 301200258
Date: dec 17 2021
Changes made: this file hasnt been changed since first push
 **/
//error faced, package does are not being download, package shows in search but does not download no message or anything it just sits and not move. prevented firebase connection

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
    
    //resets all input fields
    @IBAction func resetBtn(_ sender: UIButton)
    {
        nameTF.text = " "
        ageTF.text = " "
        genderTF.text = " "
        weightTF.text = " "
        heightTF.text = " "
        resultLabel.text =  " "
        unitType.isOn = false
    }
    //bmi calculation
    @IBAction func calculateBtn(_ sender: UIButton)
    {
        name = nameTF.text
        age = ageTF.text
        gender = genderTF.text
        weight = NSString(string: weightTF.text!).doubleValue
        height = NSString(string: heightTF.text!).doubleValue
        //if switch on do imperial calculation
        if (unitType.isOn)
        {
            result = weight/height
            resultLabel.text = formatResult(result: result)
        //if off do metric calculation
        }else
        {
            result = (weight/height/height)*10000
            resultLabel.text = formatResult(result: result)
        }
        
    }
    //rounds off result to 6dp
    func formatResult(result: Double) -> String{
            return String(format: "%.6f",result)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


}

