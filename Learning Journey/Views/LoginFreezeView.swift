//
//  LoginFreezeView.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct LoginFreezeView: View {
    @StateObject var viewModel = LoginFreezeViewModel()
    var body: some View {
        VStack{
            LJButton(
                title: "Log as Learned",
                backgroundColor: .log) {
                //action
                }
                .frame(width: 274, height: 274)
                .padding(.bottom, 30)
                .font(.largeTitle)
        
            LJButton(
                title: "Log as Freezed",
                backgroundColor: Color.freeze) {
                    //action
                }.frame(width: 274, height: 48)
            
            Text("1 out of 2 freezes used")
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    LoginFreezeView()
}
