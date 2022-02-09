//
//  MainViewModel.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 09/02/2022.
//

import Foundation


import Foundation

protocol MainViewModelProtocol {
    func fetchDataFromDataProvider()
}

class MainViewModel: MainViewModelProtocol {
    
    private var currentProvider: DataProviderProtocol
    private var locationManager = LocationManager()
    var modelToPopulate: WeatherData?{
        didSet {
            updateView?()
        }
    }
    
    var updateView:(() -> Void)?
    var showErrorAlert:(() -> Void)?
    
    init(currentProvider: DataProviderProtocol = DataProvider()) {
        self.currentProvider = currentProvider
        
        locationManager.locationValueUpdated = { [weak self] in
            self?.fetchDataFromDataProvider()
        }
    }
    
    func fetchDataFromDataProvider() {
        currentProvider.fetchAndShapeData(location: locationManager.getAvailableLocationCord()) { parsedData in
            if let data = parsedData {
                self.modelToPopulate = data
            } else {
                self.showErrorAlert?()
            }
        }
    }
    
    
}
