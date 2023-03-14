//
//  SwiftUICheckApp.swift
//  SwiftUICheck
//
//  Created by 鈴木健太 on 2023/03/13.
//

import SwiftUI

@main
struct SwiftUICheckApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            BuildingListsAndNavigation()
                .environmentObject(modelData)
        }
    }
}
