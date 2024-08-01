//
//  SwiftUIView.swift
//  
//
//  Created by hyk on 8/1/24.
//

import SwiftUI

public struct ChevronButton: View {
    let action: () -> ()
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(qvick: .chevron)
                .resizable()
                .scaledToFit()
                .frame(width: 18)
        }
    }
}

#Preview {
    ChevronButton() {
        print("나가기")
    }
}
