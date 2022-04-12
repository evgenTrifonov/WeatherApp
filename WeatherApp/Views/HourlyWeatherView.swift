//
//  HourlyWeatherView.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import SwiftUI

struct HourlyWeatherView: View {
    
    @ObservedObject var сityViewViewModel: CityViewViewModel
    
    var body: some View {

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                
            ForEach(сityViewViewModel.weather.hourly) { weather in
                let icon = сityViewViewModel.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon :
                    "sun.max.fill")
                let hour = сityViewViewModel.getTimeFor(timestamp: weather.date)
                let temp = сityViewViewModel.getTempFor(temp: weather.temperature)
                getHourlyView(hour: hour, image: icon, temp: temp)
                }
            }
        }
    }
    
    private func getHourlyView(hour: String, image: Image, temp: String) -> some View {
        VStack(spacing: 10) {
            Text(hour)
            image
              
                
            Text("\(temp)°C")
            
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
