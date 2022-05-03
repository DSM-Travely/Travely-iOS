//
//  FloatingButtonView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/29.
//

import SwiftUI

struct FloatingButtonView: View {
    var detailView: String
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: {
                    if detailView == "S" {
                        PlanDetailView()
                    } else {
                        CreatePlanView()
                    }
                }, label: {
                    Image(systemName: "plus")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30, alignment: .center)
                })
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Color.init(uiColor: .floatingButtonColor!))
                    .cornerRadius(30)
                    .padding(.bottom, 10)
                    .padding(.trailing, 10)
                    .ignoresSafeArea()
            }
        }
    }
}

struct FloatingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButtonView(detailView: "S")
            .previewLayout(.sizeThatFits)
    }
}
