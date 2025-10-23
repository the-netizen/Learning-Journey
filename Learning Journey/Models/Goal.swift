//
//  goalModel.swift
//  Learning Journey
//
//  Created by Naima Khan on 22/10/2025.
//

import Foundation

struct Goal {
    var learningGoal: String = ""
    var learningDuration: GoalDuration = .week
    
    init() {}
    
    enum GoalDuration: String, CaseIterable, Identifiable {
        case week = "Week"
        case month = "Month"
        case year = "Year"
        
        var id: String {
            self.rawValue
        }
    }
}

