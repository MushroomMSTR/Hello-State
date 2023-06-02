//
//  ContentView.swift
//  Hello-State
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	
	@State var name: String = "Nazar"
	@State var tasks = [Task]()
	
	private func addTask() {
		self.tasks.append(Task(name: "Buy new book"))
	}
	
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
			List {
				
				Button(action: addTask) {
					Text("Add Task")
				}
				
				ForEach(tasks) { task in
					Text(task.name)
				}
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
