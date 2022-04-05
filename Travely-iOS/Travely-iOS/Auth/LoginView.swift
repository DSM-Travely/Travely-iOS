//
//  LoginView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/05.
//

import SwiftUI

struct LoginView: View {

    @State var nickName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Travley")
                .font(.title)
                .fontWeight(.bold)
            Text("Login")
                .font(.subheadline)
            
            Spacer()
            
            TextField("Enter your nickName", text: $nickName)
                .modifier(StandardTextField())
            
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
