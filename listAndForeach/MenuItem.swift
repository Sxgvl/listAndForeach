//
//  MenuItem.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import Foundation

struct MenuItem: Identifiable {
    // universal id, genere automatiquement l'identifiant
    var id = UUID()
    
    let name: String
    let price: Double
}
