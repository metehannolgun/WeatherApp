//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Metehan Olgun on 13.02.2025.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to WeatherApp")
                    .bold().font(.title)
                Text("Please allow location access to see the weather forecast.")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
