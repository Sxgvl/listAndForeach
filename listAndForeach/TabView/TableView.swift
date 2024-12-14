//
//  TableView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct TableView: View {
    // Une TabView est une barre de navigation que l'on ajoute en bas de l'écran.
    // Elle permet de se déplacer dans plusieurs parties indépendantes de l'application.
    var body: some View {
        // A view that switches between multiple child views using interactive user interface elements.
        TabView{
            Rectangle().fill(Color.red)
                .tabItem {
                    Label("Red", systemImage: "circle.fill")
                }
            Rectangle().fill(Color.blue)
                .tabItem {
                    Label("Blue", systemImage: "circle.fill")
                }
            Rectangle().fill(Color.green)
                .tabItem {
                    Label("Green", systemImage: "circle.fill")
                }
        }
    }
}

#Preview {
    TableView()
}
