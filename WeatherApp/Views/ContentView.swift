//
//  ContentView.swift
//  WeatherApp
//
//  Created by Metehan Olgun on 13.02.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            WelcomeView()
                .environmentObject(locationManager)
        }
        .background(Color(hue: 0.624, saturation: 0.941, brightness: 0.428))
        .preferredColorScheme(.dark)
        
    }
}

#Preview {
    ContentView()
}
