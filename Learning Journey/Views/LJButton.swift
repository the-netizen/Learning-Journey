//
//  LJButton.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct LJButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {

        Button {
                action()
                }
        label: {
                Text(title)
                    .bold()
                    .foregroundColor(.white)
//                    .frame(width: .infinity, height: .infinity)
//                    .padding(15)
//                    .glassEffect()
                    .padding(5)
                }
                .buttonStyle(.glass)
                .background(backgroundColor)
                .clipShape(Capsule())
                .frame(width: .infinity, height: .infinity)
    }
}

#Preview {
    LJButton(title: "Click", backgroundColor: Color.black){
        //Action
    }
}
