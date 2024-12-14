//
//  NavigationModalView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct NavigationModalView: View {
    @State var isShowingTheScreen = false
    
    var body: some View {
        Button (
            action: {
                isShowingTheScreen.toggle()
            },
            label: {
                Text("Show modal")
            }
        )
        // presente une modal
        .sheet(isPresented: $isShowingTheScreen, content: {
            Text("Hello Modal")
        })
        
//        Le modifier sheet permet de présenter une nouvelle vue de manière modale. La présentation modale est une façon de naviguer vers un nouvel écran en le présentant de bas en haut.
//
//        ‎
//
//        On utilise souvent ce type de navigation pour indiquer à l’utilisateur qu’on effectue une nouvelle tâche (exemple : rédiger un nouveau message, créer un nouvel élément, etc).
//
//        ‎
//
//        Pour structurer correctement son projet, les deux écrans sont développés dans deux fichiers séparés.
    }
}

#Preview {
    NavigationModalView()
}
