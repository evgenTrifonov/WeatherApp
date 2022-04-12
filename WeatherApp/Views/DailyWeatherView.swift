//
//  DailyWeatherView.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import SwiftUI

struct DailyWeatherView: View {
    
    @ObservedObject var сityViewViewModel: CityViewViewModel
    
    var body: some View {
        ForEach(сityViewViewModel.weather.daily) { weather in
            LazyVStack {
                dailyCell(weater: weather)
            }
        }
    }
    
    private func dailyCell(weater: DailyWeather) -> some View {
        HStack {
            Text(сityViewViewModel.getDayFor(timestamp: weater.dt).uppercased())
                .frame(width: 30)
            Spacer()
            
            Text("\(сityViewViewModel.getTempFor(temp: weater.temp.max)) | \(сityViewViewModel.getTempFor(temp: weater.temp.min))°C")
                .frame(width: 50)
            Spacer()
            сityViewViewModel.getWeatherIconFor(icon: weater.weather.count > 0 ? weater.weather[0].icon : "sun.max.fill")
        }
        
        .foregroundColor(.white)
        .padding(.horizontal, 40)
        .padding(.vertical, 15)
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
    
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
