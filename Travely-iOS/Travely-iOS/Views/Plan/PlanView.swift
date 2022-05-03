//
//  PlanView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/08.
//

import SwiftUI

struct PlanView: View {
    
    @State private var presentWritingView = false
    @State private var setAnimation = false
    
    var body: some View {
        ZStack(alignment: .center) {
            GradientView()
            
            List {
                NavigationLink(destination: PlanDetailView()) {
                    PlanRowView()
                }
                .background(.clear)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                
                NavigationLink(destination: PlanDetailView()) {
                    PlanRowView()
                }
                .background(.clear)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                
                NavigationLink(destination: PlanDetailView()) {
                    PlanRowView()
                }
                .background(.clear)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                
                NavigationLink(destination: PlanDetailView()) {
                    PlanRowView()
                }
                .background(.clear)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                
                NavigationLink(destination: PlanDetailView()) {
                    PlanRowView()
                }
                .background(.clear)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                
                NavigationLink(destination: PlanDetailView()) {
                    PlanRowView()
                }
                .background(.clear)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                
                NavigationLink(destination: PlanDetailView()) {
                    PlanRowView()
                }
                .background(.clear)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            .background(.clear)
            .listStyle(.plain)
            
            FloatingButtonView(detailView: "S")
            
        }
    }
}



struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        PlanView()
    }
}
