//
//  LocationProvider.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 08/02/2022.
//

import Foundation
import CoreLocation


class LocationManager: NSObject, CLLocationManagerDelegate {
    
    private var availableValue = CLLocation(latitude: 31.52, longitude: 74.35)
    
    var locationValueUpdated:(() -> Void)?
    
    override init() {
        super.init()
        fetchCurrentAvailableLocation()
    }
    
    func getAvailableLocationCord() -> CLLocation {
        return availableValue
    }
    
    func fetchCurrentAvailableLocation() {
        let locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let latitude = location.coordinate.latitude
            let longitude = location.coordinate.longitude
            availableValue = CLLocation(latitude: latitude, longitude: longitude)
            }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error fetching location. Using Lahore's coordinates by default.")
    }
    
}
