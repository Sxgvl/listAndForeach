//
//  CarCellView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct CarCellView: View {
    let car: CarModel

    var body: some View {
        HStack(spacing: 16) {
            Image(car.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading) {
                Text(car.brand)
                    .font(.headline)
                    .bold()
                Text(car.model)
                    .font(.subheadline)
                Circle()
                    .foregroundColor(car.color)
                    .frame(height: 20)
            }
            Spacer()
            Text("\(car.km) km")
                .font(.footnote)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    VStack(spacing: 20){
        ForEach(previewCars){ car in
            CarCellView(car: car)
            
        }
    }.padding(.horizontal)
}
