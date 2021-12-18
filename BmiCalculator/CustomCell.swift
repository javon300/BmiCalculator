//
//  CustomCell.swift
//  BmiCalculator
//
//  Created by javon maxwell on 2021-12-17.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightVal: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiVal: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateVal: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
