//
//  CarModel.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import Foundation
import SwiftUICore

struct CarModel: Identifiable {
    let id = UUID()
    let brand: String
    let model: String
    let color: Color
    let km: Int
    let image: String
}

let previewCars = [
    CarModel(brand: "Porsche", model: "911 GT3", color: .blue, km: 35_290, image: "Porsche"),
    CarModel(brand: "Corvette", model: "C8", color: .red, km: 12_394, image: "Corvette"),
    CarModel(brand: "Mercedes", model: "AMG GT", color: .yellow, km: 29_012, image: "Mercedes")
]
