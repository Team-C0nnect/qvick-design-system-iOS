//
//  SwiftUIView.swift
//  
//
//  Created by hyk on 7/28/24.
//

import SwiftUI

struct QvickTextField: View {
    @Binding var text: String
    let prompt: String
    @State var isTab: Bool = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 340, height: 60)
            .foregroundStyle(.clear)
            .overlay {
                RoundedRectangle(cornerRadius: 15).stroke(isTab ? .blue : .gray)
                
                HStack(spacing: 20) {
                    Image(systemName: "person.fill")
                        .foregroundStyle(.gray)
                    
                    TextField(
                        text: $text,
                        prompt: Text(prompt).font(.pretendard(.Regular, size: 14))
                    ) {
                        
                    }
                    .overlay {
                        if self.isTab {
                            Text(prompt)
                                .foregroundStyle(.blue)
                                .font(.pretendard(.Regular, size: 11))
                                .padding(.horizontal, 5)
                                .background(Color.white)
                                .offset(x: -120, y: -30)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.bouncy) {
                            self.isTab = true
                        }
                    }
                    .onSubmit {
                        withAnimation(.bouncy) {
                            self.isTab = false
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
    }
}

#Preview {
    QvickTextField(text: .constant(""), prompt: "이메일을 입력해주세요")
}
