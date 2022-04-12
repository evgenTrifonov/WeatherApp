//
//  Localization.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 12.04.2022.
//

import Foundation

extension String {
    func localizated() -> String {
        return NSLocalizedString(self,
                                 tableName: "Localization",
                                 bundle: .main,
                                 value: self,
                                 comment: self)
    }
}
