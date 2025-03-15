//
//  TaskView.swift
//  gestortareas
//
//  Created by juan camilo on 13/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = TaskViewModel()
    
    @State private var newTaskTitle: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    TextField("Nueva tares", text: $newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Agregar") {
                        guard !newTaskTitle.isEmpty else { return }
                        viewModel.addTask(title: newTaskTitle)
                        newTaskTitle = ""
                    }
                }
                .padding()
                
                List{
                    ForEach(viewModel.tasks) { task in
                        HStack {
                            Text(task.title)
                            Spacer()
                            Button(action: {
                                viewModel.toggleTaskCompletion(task)
                            }) {
                                Image(systemName: task.isCompleted ?
                                "checkmark.circle.fill" : "circle")
                            }
                        }
                    }
                    .onDelete(perform: viewModel.removeTask)
                }
            }
            .navigationTitle(Text("Gestor de Tareas"))
        }
    }
}


