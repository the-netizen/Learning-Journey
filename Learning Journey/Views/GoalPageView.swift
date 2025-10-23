//
//  GoalPageView.swift
//  Learning Journey
//
//  Created by Naima Khan on 23/10/2025.
//

import SwiftUI

struct GoalPageView: View {
    @StateObject var homeViewModel = HomePageViewModel()
    
    var body: some View {
        VStack (alignment: .leading, content: {
            Text("I want to learn")
            
            TextField("Swift", text: $homeViewModel.learningGoal)
                .padding(.bottom)
            
            Text("I want to learn it in a")
                .font(.headline)
                .padding(.bottom, 5)
            
            HStack {
                
                ForEach(GoalDuration.allCases) {duration in
                    
                    LJButton(
                        title: duration.rawValue,
                        backgroundColor: homeViewModel.learningDuration == duration ? .log : .disabledButton
                    ){
                        homeViewModel.learningDuration = duration
                    }
                    .frame(width: 97, height: 48)
                }
            }//hstack
            
        }) //vstack
        .padding(.top, 50)
        .padding()
        
        Spacer()
            
        
    }
}

#Preview {
    GoalPageView()
}
