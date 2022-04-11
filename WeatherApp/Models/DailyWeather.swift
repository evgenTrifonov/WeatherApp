//
//  DailyWeather.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import Foundation

struct DailyWeather: Codable, Identifiable {
    var dt: Int
    var temp: Temperature
    var weather: [WeatherDetail]
    var id: UUID {
        return UUID()
    }
    
    
enum CodingKey: String {
    case date = "dt"
    case temperature = "temp"
    case weather = "weather"
}
    init() {
        dt = 0
        temp = Temperature(max: 0.0, min: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}

