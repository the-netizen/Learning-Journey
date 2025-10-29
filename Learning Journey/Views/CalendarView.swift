//
//  CalendarView.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct CalendarView: View {
    @StateObject var viewModel = CalendarViewModel()
    @ObservedObject var activityViewModel: ActivityViewModel
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    ForEach(0..<12, id: \.self) { month in
                        
                        DatePicker(
                            "Select date",
                            selection: $activityViewModel.selectedDate,
                            in: viewModel.getMonthRange(month: month),
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(.graphical)
                        
                    }
                    
                } //lazyvstack
                .padding()
            }//scrollview
        }//navstack
    }// body
}

#Preview {
    CalendarView(activityViewModel: ActivityViewModel(learningGoal: "Swift", learningDuration: .week))
}

