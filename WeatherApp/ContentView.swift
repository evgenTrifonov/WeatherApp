//
//  ContentView.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var сityViewViewModel = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityViewViewModel: сityViewViewModel).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityViewViewModel: сityViewViewModel)
                } .padding(.top, 10)
          
            } .padding(.top, 40)
        } //.background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .background(
                    Image("fon")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                )

            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
