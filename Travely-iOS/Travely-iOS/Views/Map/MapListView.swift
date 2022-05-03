//
//  MapListView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/26.
//

import SwiftUI

struct MapListView: View {
    var body: some View {
        List {
            ReviewRowView()
                .transition(.slide)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            ReviewRowView()
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            ReviewRowView()
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            ReviewRowView()
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            ReviewRowView()
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .padding(.top, 10)
    }
}

struct MapListView_Previews: PreviewProvider {
    static var previews: some View {
        MapListView()
    }
}
