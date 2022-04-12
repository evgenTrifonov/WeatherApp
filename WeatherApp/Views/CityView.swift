//
//  CityView.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import SwiftUI

struct CityView: View {
    
    @ObservedObject var cityViewViewModel: CityViewViewModel
    
    var body: some View {
        VStack {
            CityNameView(city: cityViewViewModel.city, date: cityViewViewModel.date)
                .shadow(radius: 0)
            TodayWeatherView(сityViewViewModel: cityViewViewModel)
                .padding()
            HourlyWeatherView(сityViewViewModel: cityViewViewModel)
            DailyWeatherView(сityViewViewModel: cityViewViewModel)
            
        } .padding(.bottom, 30)
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
