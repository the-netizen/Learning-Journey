//
//  DatePickerView.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct DatePickerView: View {
    @ObservedObject var activityViewModel: ActivityViewModel
    @StateObject var viewModel = DatePickerViewModel()
    @Binding var selectedDate: Date
    @State var showingMonthPicker = false
    
    var body: some View {
        VStack{
            headerView
                .padding(.bottom, 10)
            dayNamesView
                .padding(.bottom, 5)
            dayNumbersView
                .padding(.bottom, 5)
            
        }
    }
    @ViewBuilder
    private var headerView: some View {
        HStack{
            Button {
                //                showingMonthPicker.toggle()
            } label: {
                HStack{
                    Text(viewModel.currentDate.formatted(.dateTime.month(.wide).year()))
                        .foregroundColor(.primary)
                        .fontWeight(.medium)
                    Image(systemName: "chevron.right")
                }
            }
            
            Spacer()
            Button {
                viewModel.changeWeek(by: -7)
            } label: {
                Image(systemName: "chevron.left")
            }
            .padding(.horizontal)
            Button {
                viewModel.changeWeek(by: 7)
            } label: {
                Image(systemName: "chevron.right")
                
            }
        }
    }
    
    @ViewBuilder
    private var dayNamesView: some View {
        let weekdays = Calendar.current.shortWeekdaySymbols
        HStack {
            ForEach(weekdays, id: \.self) { weekday in
                Text(weekday.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
            }
        }
    }
    
    @ViewBuilder
    private var dayNumbersView: some View {
        let weekdays = viewModel.fetchWeek()
        
        HStack {
            ForEach(weekdays, id: \.self) { weekday in
                Button {
                    selectedDate = weekday
                } label: {
                    ZStack {

                        if Calendar.current.isDate(weekday, inSameDayAs: selectedDate) {
                            Circle()
                                .fill(Color.log)
                                .frame(width: 36, height: 36)
                        }
                        
                        if activityViewModel.isDateLearned(weekday) {
                            Circle()
                                .fill(Color.log)
                                .frame(width: 36, height: 36)
                                .opacity(0.5)
                        } else if activityViewModel.isDateFrozen(weekday) {
                            Circle()
                                .fill(Color.freeze)
                                .frame(width: 36, height: 36)
                                .opacity(0.5)
                        }
                        
                        // Day number text
                        Text(viewModel.dayString(for: weekday))
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
//                            .foregroundColor(activityViewModel.isDateFrozen(weekday) ? .log : .freeze)
                    }
                    .frame(maxWidth: .infinity)
                } //buttons
            }
        }
    }
}

#Preview {
    @Previewable @State var previewDate = Date.now
    return DatePickerView(
        activityViewModel: ActivityViewModel(learningGoal: "SWIFT", learningDuration: .week),
        selectedDate: $previewDate
    )
}
