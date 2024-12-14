//
//  TaskView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct TaskView: View {
    
    let task: TaskModel
    
    //computed property = propriété calculée
    var flagColor: Color {
        if task.priority == 1 {
            return .red
        } else if task.priority == 2 {
            return .blue
        } else if task.priority == 3 {
            return .orange
        } else {
            return .black
        }
    }

    var body: some View {
        HStack {
            Text(task.title).font(.title3)

            Spacer()

            Image(systemName: "flag.fill").foregroundStyle(flagColor)
        }
    }
}

#Preview {
    TaskView(task: TaskModel(title: "Task Title", description: "Task Description", priority: 2)).padding()
}
