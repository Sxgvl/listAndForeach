//
//  NavigationBarView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        NavigationStack{
            /// `Scrollview` est le premier enfant de `NavigationStack`
            ScrollView{
                Text("Hello World!")
            }
            //titre de navigation
            .navigationTitle("Bienvenue")
            .toolbarTitleDisplayMode(.automatic)
            // elements de la barre d'outils
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("Delete") {
                        print("Hello")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        print("Hello")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationBarView()
}
