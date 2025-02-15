//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Metehan Olgun on 14.02.2025.
//

import Foundation
import CoreLocation

class WeatherManager{
  
    private func getApiKey() -> String {
               guard let path = Bundle.main.path(forResource: "Config", ofType: "plist"),
                     let xml = FileManager.default.contents(atPath: path),
                     let plist = try? PropertyListSerialization.propertyList(from: xml, options: .mutableContainers, format: nil) as? [String: Any],
                     let key = plist["API_KEY"] as? String else {
                   fatalError("Config.plist dosyasından API anahtarı alınamadı.")
               }
               return key
           }
    
    func getCurrentWeather(latitude: CLLocationDegrees, longtitute: CLLocationDegrees) async throws -> ResponseBody {
        
        let apiKey = getApiKey()
        guard let url = URL(string:"https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longtitute)&exclude={part}&appid=\(apiKey)&units=metric") else {fatalError("Url is not valid")}
        
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error fetching  weather data")}
        
        let decodeData = try JSONDecoder().decode(ResponseBody.self, from: data)
        return decodeData
    }
}
// Model of the response body we get from calling the OpenWeather API
struct ResponseBody: Decodable {
    var coord: CoordinatesResponse
    var weather: [WeatherResponse]
    var main: MainResponse
    var name: String
    var wind: WindResponse

    struct CoordinatesResponse: Decodable {
        var lon: Double
        var lat: Double
    }

    struct WeatherResponse: Decodable {
        var id: Double
        var main: String
        var description: String
        var icon: String
    }

    struct MainResponse: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }
    
    struct WindResponse: Decodable {
        var speed: Double
        var deg: Double
    }
}

extension ResponseBody.MainResponse {
    var feelsLike: Double { return feels_like }
    var tempMin: Double { return temp_min }
    var tempMax: Double { return temp_max }
}
