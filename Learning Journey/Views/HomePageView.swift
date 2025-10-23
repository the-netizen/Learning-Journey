//
//  ContentView.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct HomePageView: View {
    @StateObject var viewModel = HomePageViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                ZStack {
                    Circle()
                        .frame(width: 109, height: 109)
                        .foregroundColor(.black)
                    
                    
                    Image(systemName: "flame.fill")
                        .foregroundColor(.log)
                        .font(.system(size: 37))
                }
                .padding(1)
                .glassEffect()
                .padding(.top)
                .padding(.bottom, 40)
                
                VStack(alignment: .leading) {
                    Text("Hello learner")
                        .font(.title)
                        .bold()
                    
                    Text("This app will help you learn everyday!")
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    
                    Text("I want to learn")
                        .font(.headline)
                    
                    TextField("Swift", text: $viewModel.learningGoal)
                        .padding(.bottom)
                    
                    Text("I want to learn it in a")
                        .font(.headline)
                    
                    HStack {
                        
                        ForEach(GoalDuration.allCases) {duration in
                            
                            LJButton(
                                title: duration.rawValue,
                                backgroundColor: viewModel.learningDuration == duration ? .log : .disabledButton
                            ){
                                viewModel.learningDuration = duration
                            }
                            .frame(width: 97, height: 48)
                        }
                    }//hstack
                    
                    Spacer()
                    
                } //vstack leading
                
                //            LJButton(title: "Start learning", backgroundColor: Color.log) {
                //                // take to activity page with goal and duration
                //            }
                //            .frame(width: 182, height: 48)
                //            .disabled(viewModel.learningGoal.isEmpty)
      
                
                NavigationLink(destination: ActivityView(
                    learningGoal: viewModel.learningGoal,
                    learningDuration: viewModel.learningDuration
                )
                ){
                    Text("Start Learning")
                        .foregroundColor(.white)
                        .frame(width: 182, height: 48)
                        .background(.log)
                        .clipShape(Capsule())
                }
                //            .disabled(viewModel.learningGoal.isEmpty)
            }
            .padding()
        }
    }
}

#Preview {
    HomePageView()
}
