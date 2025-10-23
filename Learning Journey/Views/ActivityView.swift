//
//  ActivityView.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct ActivityView: View {
    @StateObject var viewModel: ActivityViewModel
    
    init(learningGoal: String, learningDuration: GoalDuration){
        _viewModel = StateObject(wrappedValue: ActivityViewModel(
            learningGoal: learningGoal,
            learningDuration: learningDuration
        ))
    }
    
    var body: some View {
        NavigationView {
            VStack (spacing: 40){
                VStack (alignment: .leading, content: {
                    DatePickerView()
                        .padding(.top)
                        .padding(.bottom)
                    Text("Learning \(viewModel.learningGoal)")
                        .padding(.bottom, 20)
                    
                    HStack(alignment: .center, content: {
                        logStreakView
                        Spacer()
                        freezeStreakView
                    })
                    
                }) //leading vstack
//                .background(Color.disabledButton)
//                .cornerRadius(10)
                .padding()
                
                LoginFreezeView()
                Spacer()
            } // main vstack
            
            .navigationTitle("Activity")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: CalendarView()) {
                        Image(systemName: "calendar")
                    }
                }
                ToolbarSpacer()
                ToolbarItem {
                    NavigationLink(destination: GoalPageView()) {
                        Image(systemName: "person")
                    }
                }
            } // toolbar
            .toolbarRole(.editor)
        } // nav view
    } //body
    
    @ViewBuilder
    private var logStreakView: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 100)
                .foregroundColor(.log)
                .opacity(0.5)
//                .frame(width: 160, height: 69)
            
            HStack{
                Image(systemName: "flame.fill")
                    .foregroundColor(.log)
                    .font(.title2)
//                    .clipped()
                
                VStack(alignment: .leading, content: {
                    Text("3")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    Text("Days Learned")
                        .font(.footnote)
                        .padding(.bottom)
                })
                .foregroundColor(.white)
            }
        }.frame(height:50)
    }
    
    @ViewBuilder
    private var freezeStreakView: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 100)
                .foregroundColor(.freeze)
                .opacity(0.5)
            
            HStack{
                Image(systemName: "flame.fill")
                    .foregroundColor(.freeze)
                    .font(.title2)
                
                VStack(alignment: .leading, content: {
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    Text("Days Freezed")
                        .font(.footnote)
                        .padding(.bottom)
                })
                .foregroundColor(.white)
            }
        }.frame(height:50)
    }
}

#Preview {
    ActivityView(learningGoal: "Swift", learningDuration: GoalDuration.week)
}
