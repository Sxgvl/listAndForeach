//
//  ContentView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct ContentView: View {
    // source de données
    let parameterOptions: [String] = ["General", "Accessibility", "Camera", "Control Center", "Home Screen", "Wallpaper", "Research", "Siri"]
    
    //
    let menuItems: [MenuItem] = [
        MenuItem(name: "Salade César", price: 24.5),
        MenuItem(name: "Soupe à l'oignon", price: 24.5),
        MenuItem(name: "Escargots à la bourguignonne", price: 24.5),
        MenuItem(name: "Steak frites", price: 24.5),
        MenuItem(name: "Poulet rôti", price: 24.5),
        MenuItem(name: "Canard à l'orange", price: 24.5),
        MenuItem(name: "Filet de bar au citron", price: 24.5),
        MenuItem(name: "Risotto aux champignons", price: 24.5),
        MenuItem(name: "Tarte Tatin", price: 24.5),
        MenuItem(name: "Crème brûlée", price: 24.5)
    ]
    
    var body: some View {
        // List (ne contient qu'une source de données, pas de possibilité d'ajouter d'autres éléments, scrollable par defaut)
//        List(parameterOptions, id: \.self) { param in
//            Text(param)
//        }
        
        // ForEach (permet d'etre independant avec List et d'ajouter d'autres élements a ma liste)
        List{
            Text("Top \(parameterOptions.count) Parameters").font(.title).fontWeight(.bold)
            
            ForEach(parameterOptions, id: \.self) {param in
                Text(param)
            }

            Button(
                action: {
                    print("Add")
                },
                label: {
                    Text("Add")
                }
            )
        }
        
        // ForEach peut etre utilisé autre part que dans une liste mais affichage plat, moins stylé
//        VStack{
//            ForEach(parameterOptions, id: \.self) {param in
//                Text(param)
//            }
//            
//            Button(
//                action: {
//                    print("Add")
//                },
//                label: {
//                }
//            )
//        }
        
            List{
                ForEach(menuItems){item in
                    HStack{
                        Text(item.name)
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}
