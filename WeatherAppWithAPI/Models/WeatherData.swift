//
//  WeatherData.swift
//  WeatherAppWithAPI
//
//  Created by SAJAN  on 03/08/25.
//

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]

    struct Main: Codable {
        let temp: Double
        let humidity: Int
    }

    struct Weather: Codable {
        let description: String
        let icon: String
    }
}
