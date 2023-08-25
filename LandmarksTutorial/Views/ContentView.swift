//
//  ContentView.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack{
            
            MapView()
				.ignoresSafeArea(edges: .top) //para que pase hasta arriba el mapa
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -100)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
				.font(.subheadline)
				.foregroundColor(.secondary)
				
				Divider()
				
				
				Text("About Turtle Rock")
					.font(.title2)
				Text("Descriptive text goes here.")
				
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
