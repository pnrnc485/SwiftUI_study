//
//  BuildingListsAndNavigation.swift
//  SwiftUICheck
//
//  Created by 鈴木健太 on 2023/03/13.
//

import SwiftUI

struct BuildingListsAndNavigation: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct BuildingListsAndNavigation_Previews: PreviewProvider {
    static var previews: some View {
        BuildingListsAndNavigation()
            .environmentObject(ModelData())
    }
}
