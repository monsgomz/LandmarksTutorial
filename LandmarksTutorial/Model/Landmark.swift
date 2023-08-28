//
//  Landmark.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-25.
//

import Foundation
import SwiftUI
import CoreLocation //para interactuar con MapKit

struct Landmark: Hashable, Codable, Identifiable { //codable para conceccion entre archivo y struct, Identifiable porque tiene un ID y para ser leido en listas
	var id: Int
	var name: String
	var park: String
	var state: String
	var description: String
	var isFavorite: Bool
	
	private var imageName: String //privada porque solo nos interesa la imagen no esta variable
	var image: Image {
		Image(imageName)
	}

	private var coordinates: Coordinates
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longitude)
	}
	
	
	struct Coordinates: Hashable, Codable {
		var latitude: Double
		var longitude: Double
	}
}

