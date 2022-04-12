//
//  API+Extentions.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFor(lat: Double, lon: Double) -> String{
        let excludeFields = "minutely"
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&appid=\(key)&exclude=\(excludeFields)&units=metric"
    }
}
