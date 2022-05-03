//
//  ReviewContentView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/11.
//

import SwiftUI

struct ReviewRowView: View {
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(10)
            ReviewContentView()
        }
        .frame(width: 320, height: 180, alignment: .center)
    }
}

struct ReviewContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .frame(width: 100, height: 140, alignment: .center)
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "star")
                        .frame(width: 20, height: 20)
                    Text("name")
                        .font(.system(size: 10, weight: .regular))
                }
                
                Text("title").font(.system(size: 22, weight: .bold))
                Text("subtitle").font(.system(size: 15, weight: .regular))
                
                HStack {
                    KeywordView()
                    KeywordView()
                    KeywordView()
                }
                
                Text("서울시 송파구에 있는 롯데월드에 다녀왔어요asdfjasdfj;asdjfa;lsdjfal;sfaksjlf;sjf;lsjljl;sjsfljsjljsljfljslfjlsjlfjsjfjljljjfljlfjljfljfjljfsfjj")
                    .font(.system(size: 12, weight: .regular))
            }
        }
        .frame(width: 270, height: 150, alignment: .center)
    }
}

struct KeywordView: View {
    var body: some View {
        ZStack {
            Text("label")
                .font(.system(size: 11, weight: .regular))
                .foregroundColor(Color.init(uiColor: .mainColor!))
                .frame(width: 40, height: 14, alignment: .center)
        }
        .background(Color.init(uiColor: .skyBlueColor!))
        .cornerRadius(10)
    }
}

struct ReviewContentView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewRowView().previewLayout(.sizeThatFits)
    }
}
