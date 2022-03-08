//
//  ContentView.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                } .padding(.top, 10)
          
            } .padding(.top, 40)
        } .background(LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
