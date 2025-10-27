//
//  LoginFreezeView.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct LoginFreezeView: View {
    @ObservedObject var viewModel: ActivityViewModel
    var selectedDate: Date
    
    var body: some View {
        VStack{
            if viewModel.isDateLearned(selectedDate) {
                LJButton(
                    title: "Learned Today",
                    backgroundColor: .disabledButton)
                {
                    //
                }
                .frame(width: 274, height: 274)
                .padding(.bottom, 30)
                .font(.largeTitle)
                .disabled(true)
                .opacity(0.6)
            }
            else {
                LJButton(
                    title: "Log as Learned",
                    backgroundColor: .log)
                {
                    viewModel.logAsLearned(selectedDate)
                    
                }
                .frame(width: 274, height: 274)
                .padding(.bottom, 30)
                .font(.largeTitle)
            }
            
            
            
            if viewModel.isDateFrozen(selectedDate) {
                LJButton(
                    title: "Log as Freezed",
                    backgroundColor: .freeze) {
                        //action
                    }.frame(width: 274, height: 48)
                    .disabled(true)
            }
            else {
                LJButton(
                    title: "Log as Freezed",
                    backgroundColor: .freeze) {
                        //action
                        viewModel.logAsFrozen(selectedDate)
                    }.frame(width: 274, height: 48)
            }
                
                Text("\(viewModel.frozenDates.count) out of \(viewModel.freezesAllowed) freezes used")
                    .foregroundColor(.gray)
        }
    }
}

#Preview {
    LoginFreezeView(viewModel: ActivityViewModel(learningGoal: "Swift", learningDuration: GoalDuration.week), selectedDate: Date())
}
