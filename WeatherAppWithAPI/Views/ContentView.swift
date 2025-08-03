//
//  ContentView.swift
//  WeatherAppWithAPI
//
//  Created by SAJAN  on 03/08/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = WeatherViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Enter City Name", text: $viewModel.cityName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Get Weather") {
                    Task { await viewModel.getWeather() }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)

                Text(viewModel.temperature)
                    .font(.largeTitle)
                Text(viewModel.description)
                    .font(.title2)
                Text(viewModel.humidity)
                    .font(.body)

                Spacer()
            }
            .navigationTitle("WeatherSnap")
            .refreshable {
                await viewModel.getWeather()
            }
        }
    }
}
