//
//  ToDoListView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct ToDoListView: View {
    // Source de données
    @State var tasks: [TaskModel] = [
        TaskModel(title: "Apprendre Swift", description: "Apprendre Swift est un projet de l'école de développement Swift.", priority: 1),
        TaskModel(title: "Apprendre SwiftUI", description: "Apprendre SwiftUI est un projet de l'école de développement Swift.", priority: 2),
        TaskModel(title: "Apprendre React", description: "Apprendre React est un projet du boulot.", priority: 4)
    ]
    
    @State var isShowingScreen = false
    
    var body: some View {
        VStack{
            // verifier si une tache existe avant de l'afficher
            if tasks.isEmpty {
                Text("Aucune tache")
            } else {
                List(tasks) {task in
                    TaskView(task: task)
                }
            }
        }
        .overlay(alignment: .bottomTrailing) {
            Button(
                action: {
                    isShowingScreen.toggle()
                },
                label: {
                    Image(systemName: "plus").font(.system(size: 28, weight: .bold))
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.white)
                        .background(Circle().fill(Color.blue))
                        .shadow(radius: 10)
                        .padding()
                }
            ).padding()
        }
        .sheet(isPresented: $isShowingScreen){
            NewTaskView(taskCollection: $tasks)
        }
    }
}

#Preview {
    ToDoListView()
}
