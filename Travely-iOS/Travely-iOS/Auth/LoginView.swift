//
//  LoginView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/05.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome back to Travley")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 100)
            Text("Login")
                .font(.body)
                .padding(.bottom, 30)
            VStack(alignment: .center, spacing: 15) {
                TextField("Enter your email", text: $email)
                    .modifier(StandardTextField())
                SecureField("Enter your password", text: $password)
                    .modifier(StandardTextField())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                }
                .frame(width: 300, height: 50, alignment: .center)
                .background(Color.init(uiColor: .mainColor!))
                .cornerRadius(10)
            }
            
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
