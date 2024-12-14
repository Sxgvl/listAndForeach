//
//  NewTaskView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct NewTaskView: View {
    @State private var taskName: String = ""
    // permet de prendre la valeur la plus proche
    @State private var priority: Int = 1
    
    @Binding var taskCollection: [TaskModel]
    
    //fermer automatiquement le sheet
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter new task...", text: $taskName)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            //
            Picker(selection: $priority, label: Text("Okeeyyyy")) {
                // `tag` : permet de prendre la valeur de la source de verite si l'element est selectionne
                Text("Aucune").tag(4)
                Text("Basse").tag(3)
                Text("Moyenne").tag(2)
                Text("Haute").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
            
            Button(
                action: {
                    saveTask()
            }) {
                HStack{
                    Text("Add Task")
                        .padding()
                        .foregroundStyle(.white)
                        .bold()
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                .frame(width: 380, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.horizontal)
            }
        }.padding()
    }
    
    private func saveTask() {
//                print("Task : \(taskName)")
//                print("Priority : \(priority)")
        let newTask = TaskModel(title: taskName, description: "", priority: priority)
        taskCollection.append(newTask)
        dismiss()
    }
}

#Preview {
    NewTaskView(taskCollection: .constant([]))
}
