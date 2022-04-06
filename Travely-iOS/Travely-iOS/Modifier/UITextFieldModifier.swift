//
//  UITextField.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/05.
//

import SwiftUI

struct StandardTextField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 300, height: 40, alignment: .leading)
            .textFieldStyle(.roundedBorder)
            .font(.system(size: 14))
            .foregroundColor(Color.init(uiColor: .mainColor!))
    }
}
