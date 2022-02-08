//
//  DataProvider.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 08/02/2022.
//

import Foundation
import CoreLocation


protocol DataProviderProtocol {
    func fetchAndShapeData(location: CLLocation, completion: @escaping(_ parsedData: WeatherData?) -> Void)
}


class DataProvider: DataProviderProtocol{
    func fetchAndShapeData(location: CLLocation, completion: @escaping(_ parsedData: WeatherData?) -> Void) {
        let provider = ServiceProvider<OpenWeatherService>()
        
        provider.load(service: .location(lat: location.coordinate.latitude, long: location.coordinate.longitude)) { result in
            switch result {
            case .success(let resp):
                do {
                    
                    let someDictionaryFromJSON = try JSONSerialization.jsonObject(with: resp, options: .allowFragments) as! [String: Any]
                    print(someDictionaryFromJSON)
                    let weatherParsedData = WeatherData(dictionary: someDictionaryFromJSON as NSDictionary)
                    completion(weatherParsedData)
                } catch  {
                    print("Serialization invalid error....")
                    completion(nil)
                }
            case .failure(let error):
                print(error.localizedDescription)
                completion(nil)
            case .empty:
                print("No data")
                completion(nil)
            }
        }
    }
    
}

