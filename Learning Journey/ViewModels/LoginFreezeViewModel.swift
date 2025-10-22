//
//  LoginFreezeViewModel.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import Foundation

class LoginFreezeViewModel : ObservableObject {
    @Published var logged: Bool = false
    @Published var freezed: Bool = false
    
    init(){}
}
