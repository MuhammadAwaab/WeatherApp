//
//  DetailViewController.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 09/02/2022.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var mainTempLabel: UILabel!
    @IBOutlet weak var feelsLikeLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var maxLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var detailViewModel: DetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViewWithData()
    }
    
    private func updateViewWithData() {
        if let currentViewModel = detailViewModel{
            mainTempLabel.text = "Temp: \(currentViewModel.dailyItemToDisplay.temp?.day ?? 0)c"
            feelsLikeLabel.text = "Feels like: \(currentViewModel.dailyItemToDisplay.feels_like?.day ?? 0)c"
            humidityLabel.text = "Humididty: \(currentViewModel.dailyItemToDisplay.humidity ?? 0)%"
            minLabel.text = "Min: \(currentViewModel.dailyItemToDisplay.temp?.min ?? 0)c"
            maxLabel.text = "Max: \(currentViewModel.dailyItemToDisplay.temp?.max ?? 0)c"
            descriptionLabel.text = currentViewModel.dailyItemToDisplay.weather?.first?.description ?? ""
        }
    }
    
}
