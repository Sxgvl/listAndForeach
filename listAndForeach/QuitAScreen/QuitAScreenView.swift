//
//  QuitAScreenView.swift
//  listAndForeach
//
//  Created by Segal GBENOU on 10/12/2024.
//

import SwiftUI

struct QuitAScreenView: View {
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
            ModalView()
        })
    }
}

#Preview {
    QuitAScreenView()
}
