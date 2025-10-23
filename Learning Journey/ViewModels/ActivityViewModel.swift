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

    
    init(learningGoal: String, learningDuration: GoalDuration) {
        self.learningGoal = learningGoal
        self.learningDuration = learningDuration
    }
}
