//
//  CalendarViewModel.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import Foundation

class CalendarViewModel : ObservableObject{
    @Published var currentDate = Date()
//    @Published var selectedDate = Date()
    private let calendar = Calendar.current
    
    init(){}
       
    func getMonthRange(month: Int) -> ClosedRange<Date> {
            let calendar = Calendar.current
            let monthDate = calendar.date(byAdding: .month, value: month, to: Date()) ?? Date()
            let start = calendar.date(from: calendar.dateComponents([.year, .month], from: monthDate))!
            let end = calendar.date(byAdding: DateComponents(month: 1, day: -1), to: start)!
            return start...end
    }
    
}

