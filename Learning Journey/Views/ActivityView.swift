//
//  ActivityView.swift
//  Learning Journey
//
//  Created by Naima Khan on 19/10/2025.
//

import SwiftUI

struct ActivityView: View {
    @StateObject var viewModel = ActivityViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Activity")
            // .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: CalendarView()) {
                        Image(systemName: "calendar")
                    }
                }
                ToolbarSpacer()
                ToolbarItem {
                    NavigationLink(destination: GoalPageView()) {
                        Image(systemName: "person")
                    }
                }
            } // toolbar
            .toolbarRole(.editor)
        } // nav view
    }
}

#Preview {
    ActivityView()
}
