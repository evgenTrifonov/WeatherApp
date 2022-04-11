//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import Foundation

struct WeatherResponse: Codable {
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(
            current: Weather(),
            hourly: [Weather](repeating: Weather(),
                              count: 24),
            daily: [DailyWeather](repeating: DailyWeather(),
                                  count: 8))
    }
    
}

