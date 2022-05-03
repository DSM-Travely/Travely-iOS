//
//  TabView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/11.
//

import SwiftUI

struct DefaultTabView: View {
    
    init() {
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    var body: some View {
        NavigationView {
            TabView {
                MapView()
                    .tabItem {
                        Image(systemName: "map.fill")
                        Text("Map")
                    }
                    .hiddenNavigationBarStyle()
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .hiddenNavigationBarStyle()
                
                PlanView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Plan")
                    }
                    .hiddenNavigationBarStyle()
                
                MyPageView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                    .hiddenNavigationBarStyle()
            }
            .accentColor(Color.init(uiColor: .mainColor!))
            .onAppear {
                UITabBar.appearance().barTintColor = .white
                UITabBar.appearance().tintColor = .white
                UITabBar.appearance().backgroundColor = .white
            }
        }
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultTabView()
    }
}
