//
//  Weather.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import Foundation

class Weather: Codable, Identifiable {
    var dt: Int
    var temp: Double
    var feelsLike: Double
    var pressure: Double
    var humidity: Int
    var dewPoint: Double
    var clouds: Int
    var windSpeed: Double
    var windDeg: Int
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case dt
        case temp
        case feelsLike
        case pressure
        case humidity
        case dewPoint
        case clouds
        case windSpeed
        case windDeg
        case weather
    }
    
    init() {
        dt = 0
        temp = 0.0
        feelsLike = 0.0
        pressure = 0.0
        humidity = 0
        dewPoint = 0.0
        clouds = 0
        windSpeed = 0.0
        windDeg = 0
        weather = []
        
        
    }
}

extension Weather {
    var id: UUID {
        return UUID()
    }
}


