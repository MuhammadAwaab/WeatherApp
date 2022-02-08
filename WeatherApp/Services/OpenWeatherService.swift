//
//  OpenWeatherService.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 08/02/2022.
//

import Foundation

let apiKey = "90b3dbeb9647d06e116c66c11f0f7896"

let sampleNetworkCall = "https://api.openweathermap.org/data/2.5/onecall?lat=31.52&lon=74.35&exclude=hourly,minutely,alerts&appid=90b3dbeb9647d06e116c66c11f0f7896"


enum OpenWeatherService {
    case location(lat: Double, long:Double)
}


extension OpenWeatherService: Service {
    var baseURL: String {
        return "https://api.openweathermap.org"
    }

    var path: String {

        return "/data/2.5/onecall"
    }

    var parameters: [String: Any]? {
        // default params
        var params: [String: Any] = [:]
    
        switch self {
        case .location(let lat, let long):
            params["lat"] = "\(lat)"
            params["lon"] = "\(long)"
        }
        
        params["units"] = "metric"
        params["exclude"] = "hourly,minutely,alerts"
        params["appid"] = apiKey
        
        return params
    }

    var method: ServiceMethod {
        return .get
    }
}
