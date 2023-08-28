//
//  LandmarkList.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-25.
//

import SwiftUI

struct LandmarkList: View {
	
	@State private var showFavoritesOnly = false
	@EnvironmentObject var modelData: ModelData //para que leea el model data y sea dinamico
	
	var filteredLandmarks: [Landmark] { //filtro para mostrar favofritos
		modelData.landmarks.filter { landmark in
			(!showFavoritesOnly || landmark.isFavorite)
		}
	}
	
    var body: some View {
		
		NavigationView {
			//llama al modelo para leer la informacion
			List {
				Toggle(isOn: $showFavoritesOnly) {
					Text("Favorites only")
				}
				ForEach(filteredLandmarks) { landmark in
					NavigationLink {
						LandmarkDetail(landmark: landmark) //destino
					} label: {
						LandmarkRow(landmark: landmark)// lo que se muestra
					}
				}
			}
			.navigationTitle("Landmarks")
		}
		
	}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
    }
}
