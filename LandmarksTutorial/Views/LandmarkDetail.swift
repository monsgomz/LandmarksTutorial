//
//  LandmarkDetail.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-26.
//

import SwiftUI

struct LandmarkDetail: View {
	
	var landmark: Landmark
	
    var body: some View {
		
		ScrollView {
			VStack {
				
				MapView(coordinate: landmark.locationCoordinate)
					.ignoresSafeArea(edges: .top) //para que pase hasta arriba el mapa
					.frame(height: 300)
				
				CircleImage(image: landmark.image)
					.offset(y: -100)
					.padding(.bottom, -130)
				
				VStack(alignment: .leading) {
					
					Text(landmark.name)
						.font(.title)
					
					HStack {
						
						Text(landmark.park)
							.font(.subheadline)
						Spacer()
						Text(landmark.state)
							.font(.subheadline)
					}
					.font(.subheadline)
					.foregroundColor(.secondary)
					
					Divider()
					
					
					Text(landmark.name)
						.font(.title2)
					Text(landmark.description)
					
				}
				.padding()

			}
			.navigationTitle(landmark.name)
			.navigationBarTitleDisplayMode(.inline)
		}
		
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
		LandmarkDetail(landmark: landmarks[0])
    }
}
