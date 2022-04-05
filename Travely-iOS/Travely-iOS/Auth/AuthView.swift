//
//  ContentView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Travely")
                .font(.title)
                .fontWeight(.bold)
            Text("Travel Comfortably")
                .font(.subheadline)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("Go to Login")
                    .padding()
                    .foregroundColor(.white)
            }
            .frame(width: 300, height: 50, alignment: .center)
            .background(Color.init(uiColor: .mainColor!))
            .cornerRadius(10)
            
            Button(action: {
                
            }) {
                Text("Go to Sign Up")
                    .padding()
                    .foregroundColor(Color.init(uiColor: .mainColor!))
            }
            .frame(width: 300, height: 50, alignment: .center)
            .background(Color.init(uiColor: .skyBlueColor!))
            .cornerRadius(10)
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
