//
//  ContentView.swift
//  Hello-State
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	
	@State var name: String = "Nazar"
	
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(name)
				.font(.largeTitle)
			Button("Change Name") {
				name = "Nazar Stf"
			}
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
