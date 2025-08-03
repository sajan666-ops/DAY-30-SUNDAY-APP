import Foundation

class NetworkManager {
    static let shared = NetworkManager()

    func fetchWeather(for city: String) async throws -> WeatherData {
        guard let url = URL(string: "\(Constants.baseURL)?q=\(city)&appid=\(Constants.apiKey)&units=metric") else {
            throw URLError(.badURL)
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        // 🔥 DEBUG: Print raw JSON response
        if let jsonString = String(data: data, encoding: .utf8) {
            print("RAW JSON RESPONSE: \n\(jsonString)")
        } else {
            print("Failed to decode response into string")
        }

        // Try to Decode
        do {
            let decodedData = try JSONDecoder().decode(WeatherData.self, from: data)
            return decodedData
        } catch {
            print("Decoding Failed: \(error.localizedDescription)")
            throw error
        }
    }
}
