//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Metehan Olgun on 13.02.2025.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    //konum izni kontrolü için fonksiyon
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    //konumu almak için delegate fonksiyonları
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    //konumu alamazsak hata mesajı yazdırma fonksiyonu
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("Error getting location.", error)
        isLoading = false
    }
    
}
