//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by 方文杰 on 2020/12/12.
//

import SwiftUI

@main
struct LandMarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
