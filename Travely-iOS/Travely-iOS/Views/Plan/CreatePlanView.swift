//
//  CreatePlanView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/08.
//

import SwiftUI

struct CreatePlanView: View {

    @State private var title: String = ""
    @State private var address: String = ""
    @State private var memo: String = ""
    
    var body: some View {
        ZStack {
            
            GradientView()
            VStack {
                TextField("Title", text: $title)
                    .modifier(TitleTextField())
                    
                Button(action: {
                    
                }) {
                    Text("address")
                        .foregroundColor(.gray)
                }
                .frame(width: 330, height: 50, alignment: .center)
                .background(.white)
                .cornerRadius(10)
                
                TextEditor(text: $memo)
                    .frame(width: 330, height: .infinity, alignment: .center)
                    .modifier(PlanTextField())
                    
                Button(action: {
                }) {
                    Text("Register")
                        .foregroundColor(.white)
                }
                .frame(width: 330, height: 40, alignment: .center)
                .background(Color.init(uiColor: .mainColor!))
                .cornerRadius(10)
                    
                Spacer()
                
            }
        }
    }
}

struct CreatePlanView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePlanView()
    }
}
