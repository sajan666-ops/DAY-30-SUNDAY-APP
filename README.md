# 🌦️ WeatherNow — iOS Weather App

WeatherNow is a beautifully designed iOS app that fetches and displays real-time weather data for any location using a weather API. It showcases SwiftUI best practices, API handling, error fallback mechanisms, and clean MVVM architecture. 

---

## ✨ Features

- 🌍 Search and View Weather for Any City
- 📡 Real-time Weather Data via API
- 🌙 Light / Dark Mode Support
- 🚫 Offline Handling with Cached Data Fallback
- 🔄 Pull-to-Refresh Weather Updates
- 📱 Clean & Adaptive SwiftUI Design (All Devices)
- 🧪 Unit-Tested Networking Layer (Optional, if added later)

---

## 🏗️ Architecture

- **MVVM (Model-View-ViewModel) Pattern**
- **Dependency Injection** for API Services
- **URLSession + Codable** for Networking
- **SwiftUI State Management** (`@State`, `@ObservedObject`)
- Async API calls with proper error handling & UI feedback

---

## 🛠️ Tech Stack

- **Swift 5.9**
- **SwiftUI**
- **Combine** (optional for advanced state management)
- **OpenWeatherMap API** (or the API you used)
- **Xcode 16.x**

---



## 🚀 Getting Started

1. **Clone the Repo**
    ```bash
    git clone https://github.com/YourUsername/WeatherNow.git
    ```

2. **Open in Xcode**
    ```bash
    cd WeatherNow
    open WeatherNow.xcodeproj
    ```

3. **Insert Your API Key**
    - Open `WeatherService.swift`
    - Replace `"YOUR_API_KEY"` with your actual API key.

4. **Run on Simulator or Device**
    - Build & Run (Cmd + R)

---

## 📂 Folder Structure
WeatherNow/
├── Models/
│ └── WeatherData.swift
├── Views/
│ └── WeatherView.swift
├── ViewModels/
│ └── WeatherViewModel.swift
├── Services/
│ └── WeatherService.swift
├── Assets.xcassets/
└── WeatherNowApp.swift



---

## 🧑‍💻 Author

- **Sajan Mahla** — [Sajanmahla](https://github.com/Sajan666-ops)

---

## 🌟 What's Next? (Planned v2.0 Features)

- Apple ID Login Integration
- Location-Based Auto-Weather Detection
- Weather Forecast for Next 7 Days
- Custom Animations (e.g., Rain, Snow Effects)
- Widgets & Live Activities

---

## 🤝 Contributing

Feel free to fork the repo, open issues, or create pull requests if you find bugs or have ideas for improvements.

---

## 📄 License

MIT License. See `LICENSE` file for more details.

---

# ⚡ Make it Real, Make it Apple! 🚀

