//
//  DatePickerViewModel.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import Foundation

class DatePickerViewModel : ObservableObject{
    @Published var currentDate: Date = Date()
//    @Published var selectedDate: Date= Date()
    
    // fetches current week
    func fetchWeek() -> [Date] {
        let calendar = Calendar.current
        
        guard let weekInterval = calendar.dateInterval(of: .weekOfYear, for: currentDate)
        else {
            return []
        }
        let startDay = weekInterval.start

        var weekDays: [Date] = []
        for i in 0...6 {
            if let date = calendar.date(byAdding: .day, value: i, to: startDay){
                weekDays.append(date)
            }
        }
        return weekDays
    }
    
    // turns date into just day number
    func dayString(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter.string(from: date)
    }
    
    
    // add or subtract days from current date to change week
    func changeWeek(by days: Int){
        if let newDate = Calendar.current.date(byAdding: .day, value: days, to: currentDate){
            currentDate = newDate
        }
    }
    init(){}
}

