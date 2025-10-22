//
//  GoalPageViewModel.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import Foundation

class GoalPageViewModel : ObservableObject {
    @Published var learningGoal: String = ""
    @Published var learningDuration: GoalDuration = .week
    
    init() {}
}

enum GoalDuration: String, CaseIterable, Identifiable {
    case week = "Week"
    case month = "Month"
    case year = "Year"
    var id: String {
        self.rawValue
    }
}
