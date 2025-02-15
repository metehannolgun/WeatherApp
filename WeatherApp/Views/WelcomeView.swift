//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Metehan Olgun on 13.02.2025.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to the  Weather App")
                    .bold().font(.title)
                Text("Please allow location access to see the weather forecast..")
                    .padding()
            }
            
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
