//
//  WeatherViewModel.swift
//  WeatherAppWithAPI
//
//  Created by SAJAN  on 03/08/25.
//

import Foundation

@MainActor
class WeatherViewModel: ObservableObject {
    @Published var cityName: String = ""
    @Published var temperature: String = "—"
    @Published var description: String = "—"
    @Published var humidity: String = "—"

    func getWeather() async {
        do {
            let weather = try await NetworkManager.shared.fetchWeather(for: cityName)
            temperature = String(format: "%.1f°C", weather.main.temp)

            description = weather.weather.first?.description.capitalized ?? "—"
            humidity = "Humidity: \(weather.main.humidity)%"
        } catch {
            print("Failed to fetch weather: \(error)")
            temperature = "Error"
            description = "Error"
            humidity = "Error"
        }
    }
}
