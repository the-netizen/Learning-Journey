//
//  ActivityViewModel.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import Foundation

class ActivityViewModel : ObservableObject {
    @Published var learningGoal: String = ""
    @Published var learningDuration: GoalDuration
    @Published var learnedDates: Set<Date> = []
    @Published var frozenDates: Set<Date> = []
    @Published var selectedDate: Date = Date()

    
    init(learningGoal: String, learningDuration: GoalDuration) {
        self.learningGoal = learningGoal
        self.learningDuration = learningDuration
    }
    
    var freezesAllowed: Int {
        switch learningDuration {
            case .week: return 2
            case .month: return 8
            case .year: return 96
        }
    }
    
    var freezesRemaining: Int {
        freezesAllowed - frozenDates.count
    }
    
    func logAsLearned(_ date: Date){
        // set all selected dates to have time of 00:00
        let normalizedDate = Calendar.current.startOfDay(for: date)
        
        if(frozenDates.contains(normalizedDate)){
            frozenDates.remove(normalizedDate)
            learnedDates.insert(normalizedDate)
        }
        else{
            learnedDates.insert(normalizedDate)
        }
    } //logAsLearned()
    
    func logAsFrozen(_ date: Date){
        guard freezesRemaining > 0 else { return }
        let normalizedDate = Calendar.current.startOfDay(for: date)
        
        learnedDates.remove(normalizedDate)
        frozenDates.insert(normalizedDate)
    } //logasFrozen()
    
    func isDateLearned(_ date: Date) -> Bool {
        let normalizedDate = Calendar.current.startOfDay(for: date)
        return learnedDates.contains(normalizedDate)
    }

    func isDateFrozen(_ date: Date) -> Bool {
        let normalizedDate = Calendar.current.startOfDay(for: date)
        return frozenDates.contains(normalizedDate)
    }
}
