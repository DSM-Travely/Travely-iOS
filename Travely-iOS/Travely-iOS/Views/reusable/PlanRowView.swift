//
//  PlanRowView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/22.
//

import SwiftUI

struct PlanRowView: View {
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(10)
            PlanContentView()
        }
        .frame(width: 330, height: 100, alignment: .center)
    }
}

struct PlanContentView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("경주여행 계획표")
                .font(.system(size: 20, weight: .bold))
            Spacer()
            CheckBoxView()
                .padding(.trailing, 40)
            
        }
    }
}

struct CheckBoxView: View {
    @State private var showCheck = true
    
    var body: some View {
        ZStack {
            Image("checkBox")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .onTapGesture {
                    showCheck.toggle()
                }
            if showCheck {
                Image(systemName: "checkmark")
                    .resizable()
                    .foregroundColor(.green)
                    .frame(width: 20, height: 15, alignment: .center)
            }
            
            
        }
    }
}

struct PlanRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlanRowView().previewLayout(.sizeThatFits)
    }
}
