//
//  CarDetailsView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct CarDetailsView: View {
    let car: CarModel

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(car.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 280)
                .clipped()

            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(car.brand)
                            .font(.title)
                            .bold()
                        Text(car.model)
                            .font(.title3)
                            .fontWeight(.light)
                    }

                    Spacer()

                    VStack(alignment: .trailing, spacing: 12) {
                        Circle()
                            .foregroundColor(car.color)
                            .frame(height: 20)
                        Text("\(car.km) km")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            // le navigation link imbriqué ici ne marche pas, il faut retourner dans la vue principale
            NavigationLink {
                Rectangle()
            } label: {
                Text("Voir historique des entretiens").font(.body).foregroundColor(Color(white: 0.2)).padding(.horizontal)
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    CarDetailsView(car: previewCars[1])
}
