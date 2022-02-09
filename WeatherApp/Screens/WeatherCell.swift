//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 09/02/2022.
//

import UIKit

class WeatherCell: UITableViewCell {

    
    @IBOutlet weak var dayMinTemp: UILabel!
    @IBOutlet weak var dayMaxTemp: UILabel!
    @IBOutlet weak var dayHumidity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
