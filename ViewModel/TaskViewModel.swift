//
//  TaskViewModel.swift
//  gestortareas
//
//  Created by juan camilo on 13/03/25.
//
import SwiftUI

class TaskViewModel: ObservableObject {
    
    @Published var tasks: [Task] = []
    
    func addTask(title: String) {
        let newTask = Task(title: title, isCompleted: false)
        tasks.append(newTask)
        
        print(tasks)
    }
    
    func toggleTaskCompletion(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id}) {
            tasks[index].isCompleted.toggle()
        }
    }
    
    func removeTask(at offset: IndexSet) {
        tasks.remove(atOffsets: offset)
    }
}
