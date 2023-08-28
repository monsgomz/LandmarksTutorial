//
//  ContentView.swift
//  LandmarksTutorial
//
//  Created by Montserrat Gomez on 2023-08-24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
		LandmarkList()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
