//
//  MyPageView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/08.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        ZStack {
            GradientView()
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "arrow.right.square")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 20, height: 20, alignment: .center)
                            .padding(.trailing, 25)
                    })
                }
                
                VStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    HStack {
                        Text("nickname")
                            .font(.system(size: 20, weight: .bold))
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "pencil")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 15, height: 15, alignment: .center)
                        })
                    }
                    
                    Text("jangseoyoung0402 @ gmail.com")
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                    
                }
            }
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
