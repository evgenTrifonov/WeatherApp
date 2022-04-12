//
//  TodayWeatherView.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import SwiftUI

struct TodayWeatherView: View {
    
    @ObservedObject var сityViewViewModel: CityViewViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Сегодня")
                .font(.largeTitle)
                .bold()
            
            HStack(spacing: 20) {
                LottieView(name: сityViewViewModel.getLottieAnimationFor(icon: сityViewViewModel.weatherIcon))
                    .frame(width: 100, height: 100)
                
                VStack(alignment: .leading) {
                    Text("\(сityViewViewModel.temperature)°C")
                        .font(.system(size: 42))
                    Text(сityViewViewModel.conditions)
                }
            }
            //format
            HStack {
                Spacer()
                widgetView(image: "wind", color: .green, title: "\(сityViewViewModel.windSpeed) м/сек.")
                Spacer()
                widgetView(image: "drop.fill", color: .blue, title: "\(сityViewViewModel.humidity)")
                Spacer()
                widgetView(image: "umbrella", color: .red, title: "\(сityViewViewModel.rainChances)")
                Spacer()
            }
            
        }
        
        .padding()
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [Color.blue.opacity(0.5), Color.blue], startPoint: .top, endPoint: .bottom)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)

    }
    
    private func widgetView(image: String, color: Color, title: String) -> some View {
        VStack {
            Image(systemName: image)
                .padding()
                .font(.title)
                .foregroundColor(color)
                .background((RoundedRectangle(cornerRadius: 10).fill(Color.white)))
            
            Text(title)
        }
        
    }
}

struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
