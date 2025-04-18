//
//  SwiftUIView.swift
//  
//
//  Created by hyk on 7/27/24.
//

import SwiftUI

public struct QvickButton: View {
    let action: (() -> ())?
    let destination: (() -> AnyView)?
    let text: String
    let disable: Bool
        
    public init(action: (() -> ())? = nil, destination: (() -> AnyView)? = nil, text: String, disable: Bool) {
        self.text = text
        self.disable = disable
        self.action = action
        self.destination = destination
    }
    
    
    
    public var body: some View {
        Button {
            if let action = action {
                action()
            }
        } label: {
            RoundedRectangle(cornerRadius: 14)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundStyle(disable ? Color.labelLightDisable : .primaryNormal)
                .overlay {
                    Text(text)
                        .font(.pretendard(.semibold, size: 17))
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)
        }
        .disabled(disable)
    }
}

#Preview {
    QvickButton(text: "다음", disable: false)
}
