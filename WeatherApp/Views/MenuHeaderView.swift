//
//  MenuHeaderView.swift
//  WeatherApp
//
//  Created by Evgeny Trifonov on 08.03.2022.
//

import SwiftUI



struct MenuHeaderView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    @State private var searchTerm = "Москва"
    
    var body: some View {
        
        HStack {
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
        
        
        Button {
            cityVM.city = searchTerm
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                
                Image(systemName: "magnifyingglass")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack (alignment: .leading) {
            Image(systemName: "location.fill")
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.5))
        })
   
}



struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
