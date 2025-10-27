//
//  LoginFreezeViewModel.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import Foundation

class LoginFreezeViewModel : ObservableObject {
//    @Published var logged: Bool = false
//    @Published var freezed: Bool = false
//    @Published var daysLearned: Set<Date> = []
//    @Published var daysFreezed: Set<Date> = []
//    
//    @Published var selectedDate: Date
//    @Published var goalDuration: GoalDuration = .week
    
//    
//    var totalFreezes: Int {
//        switch goalDuration {
//        case .week: return 2
//        case .month: return 8
//        case .year: return 96
//        }
//    }
//    var freezeRemaining: Int {totalFreezes - daysFreezed.count}
    
    init() {}
//    init(selectedDate: Date, goalDuratiom: GoalDuration){
//        self.selectedDate = selectedDate
//        self.goalDuration = goalDuratiom
//    }
    
//    func logAsLearned(selectedDate: Date = Date()){
//        if(daysFreezed.contains(selectedDate)){
//            daysFreezed.remove(selectedDate)
//            daysLearned.insert(selectedDate)
//        }
//        else{
//            daysLearned.insert(selectedDate)
//        }
//    }
//    
//    func logAsFreezed(selectedDate: Date = Date()) { //pass selected date as arg
//        guard freezeRemaining > 0 else {return}
//        
//        if (daysLearned.contains(selectedDate)) {
//            daysLearned.remove(selectedDate)
//            daysFreezed.insert(selectedDate)
//        }
//        else{
//            daysFreezed.insert(selectedDate)
//        }
//    }
}
