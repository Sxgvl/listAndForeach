//
//  NavigationStackView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct NavigationStackView: View {
    
    var body: some View {
        // on cree une seule NavigationStack
        NavigationStack{
            List(previewCars){ car in
                // on peut creer plusieurs NavigationLink dans les ecrans details et y avoir acces uniquement depuis l'ecran principal qui a le NavigationStack
                NavigationLink {
                    //destination
                    CarDetailsView(car: car)
                } label: {
                    //lien de navigation d'un écran vers écran détail
                    CarCellView(car: car)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Mon garage")
        }
    }
}

#Preview { NavigationStackView() }
