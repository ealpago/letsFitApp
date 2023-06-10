//
//  MealsTableTableViewCell.swift
//  letsFitApp
//
//  Created by Emre Alpago on 10.06.2023.
//

import UIKit

class MealsTableTableViewCell: UITableViewCell {

    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var dayTimeView: UIView!
    @IBOutlet weak var dayTimeImageView: UIImageView!
    @IBOutlet weak var dayTimeLabel: UILabel!
    @IBOutlet weak var addView: UIView!
    @IBOutlet weak var addButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

enum MealTime {
    case breakfast
    case lunch
    case dinner
    case snack
}
