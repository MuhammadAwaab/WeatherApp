//
//  DetailViewModel.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 09/02/2022.
//

import Foundation


protocol DetailViewModelProtocol {
    var dailyItemToDisplay: Daily {get}
    
}

class DetailViewModel: DetailViewModelProtocol {
    var dailyItemToDisplay: Daily
    
    init(dailyItem: Daily) {
        self.dailyItemToDisplay = dailyItem
    }
    
}
