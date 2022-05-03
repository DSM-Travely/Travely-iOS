//
//  SearchView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/08.
//

import SwiftUI

struct SearchView: View {
    @State private var searchWord = ""
    var body: some View {
        ZStack(alignment: .center) {
            GradientView()
            VStack(alignment: .center) {
                
                SearchBar(text: $searchWord)
                
                List {
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
                .background(.clear)
                .listStyle(.plain)
            }
            
            FloatingButtonView(detailView: "P")
        }
    }
}

struct SearchBar : View {
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        TextField("Search place or review", text: $text)
            .frame(width: 260, height: 35, alignment: .center)
            .padding(.horizontal, 30)
            .background(.white)
            .cornerRadius(10)
            .onTapGesture {
                self.isEditing = true
            }
            .overlay {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                    
                    if isEditing {
                        Button(action: {
                            self.text = ""
                        }) {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 8)
                    }
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
