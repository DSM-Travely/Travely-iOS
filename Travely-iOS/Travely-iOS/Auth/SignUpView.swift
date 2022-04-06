//
//  SignUpView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/06.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var nickname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.init(uiColor: .mainColor!), .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                
                Text("Welcome to Travley")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 100)
                
                Text("Sign Up")
                    .font(.body)
                    .padding(.bottom, 30)
                
                VStack(alignment: .center, spacing: 15) {
                    TextField("Enter your email", text: $nickname)
                        .modifier(StandardTextField())
                    TextField("Enter your email", text: $email)
                        .modifier(StandardTextField())
                    SecureField("Enter your password", text: $password)
                        .modifier(StandardTextField())
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("Sign Up")
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
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
