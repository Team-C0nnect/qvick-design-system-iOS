//
//  SwiftUIView.swift
//  
//
//  Created by hyk on 7/27/24.
//

import SwiftUI

struct QvickButton: View {
    let action: (() -> ())?
    let text: String
    let background: Color
        
    public init(action: (() -> ())? = nil, text: String, background: Color = .blue) {
        self.text = text
        self.background = background
        self.action = action
    }
    
    var body: some View {
        Button {
            if let action = action {
                action()
            }
        } label: {
            RoundedRectangle(cornerRadius: 14)
                .frame(width: 345, height: 50)
                .foregroundStyle(background)
                .overlay {
                    Text(text)
                        .font(.pretendard(.semibold, size: 17))
                        .foregroundStyle(.white)
                }
        }
    }
}

#Preview {
    QvickButton(text: "다음")
}
