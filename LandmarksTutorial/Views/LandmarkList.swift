//
//  LandmarkList.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
		
		NavigationView {
			//llama al modelo para leer la informacion
			List(landmarks) { landmark in
				
				NavigationLink {
					LandmarkDetail(landmark: landmark)//destino
				}
				label: {
					LandmarkRow(landmark: landmark) //lo que se muestra
				}
				
				LandmarkRow(landmark: landmark) //llama a la vista y le pasa la informacion
			}
			.navigationTitle("Landmarks")
		}
		
	}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
