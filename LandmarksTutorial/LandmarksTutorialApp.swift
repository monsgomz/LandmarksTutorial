//
//  LandmarksTutorialApp.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-24.
//

import SwiftUI

@main
struct LandmarksTutorialApp: App {
	
	@StateObject private var modelData = ModelData()
	
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(modelData)
        }
    }
}
