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
//                    .padding(15)
//                    .glassEffect()
                    .padding(5)
//                    .background(backgroundColor)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .font(.system(size: 40))
                    .clipShape(Capsule())
                }
                .background(backgroundColor)
                .buttonStyle(.glass)
                .clipShape(Capsule())
//                .frame(width: .infinity, height: .infinity)
    }
}

#Preview {
    LJButton(title: "Click", backgroundColor: Color.black){
        //Action
    }
}
