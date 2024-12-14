//
//  ModalView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct ModalView: View {
    // utiliser une variable d'environnement Dismiss qui est disponible dans toutes les vues et qui permet de quitter un écran
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Text("Hello Modal")
            Button(
                action: {
                    dismiss()
                },
                label: {
                    Text("Close")
                }
            )
        }
    }
}

#Preview {
    ModalView()
}
