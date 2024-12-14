//
//  TaskModel.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import Foundation

struct TaskModel: Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let priority: Int
}
