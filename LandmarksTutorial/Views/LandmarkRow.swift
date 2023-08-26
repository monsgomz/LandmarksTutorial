//
//  LandmarkRow.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-25.
//

import SwiftUI

struct LandmarkRow: View {
	var landmark: Landmark //parametro de la vista
	
    var body: some View {
		
		HStack {
			landmark.image
				.resizable()
				.frame(width: 50, height: 50)
			Text(landmark.name)
			Spacer()
		}
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			LandmarkRow(landmark: landmarks[0])
			LandmarkRow(landmark: landmarks[1])
		}
		.previewLayout(.fixed(width: 300, height: 70))
		
    }
}
