//
//  SwiftUIView.swift
//  
//
//  Created by hyk on 7/28/24.
//

import SwiftUI

public struct QvickTextField: View {
    @Binding var text: String
    let prompt: String
    let icon: String
    @State var isTab: Bool = false
    let isSecure: Bool
    
    public init(text: Binding<String>, prompt: String, icon: String, isSecure: Bool) {
        self._text = text
        self.prompt = prompt
        self.icon = icon
        self.isSecure = isSecure
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 340, height: 60)
            .foregroundStyle(.clear)
            .overlay {
                RoundedRectangle(cornerRadius: 15).stroke(isTab || !text.isEmpty ? Color.primaryNormal : .lineAlternative)
                    .overlay {
                        if isTab || !self.text.isEmpty {
                            HStack {
                                Text(prompt)
                                    .foregroundStyle(.blue)
                                    .font(.pretendard(.regular, size: 11))
                                    .padding(.horizontal, 5)
                                    .background(Color.white)
                                    .offset(y: -30)
                                
                                Spacer()
                            }
                            .padding(.leading)
                        }
                    }
                
                HStack(spacing: 20) {
                    Image(systemName: icon)
                        .foregroundStyle(Color.lineAlternative)
                    
                    if isSecure {
                        SecureField(
                            text: $text,
                            prompt: 
                                Text(prompt)
                                .font(.label1Normal(.regular))
                        ) {
                            
                        }
                        .textInputAutocapitalization(.never)
                        .onTapGesture {
                            withAnimation(.bouncy) {
                                self.isTab = true
                            }
                        }
                        .onSubmit {
                            if self.text.isEmpty {
                                withAnimation(.bouncy) {
                                    self.isTab = false
                                }
                            }
                        }
                    } else {
                        TextField(
                            text: $text,
                            prompt: Text(prompt).font(.label1Normal(.regular))
                        ) {
                            
                        }
                        .textInputAutocapitalization(.never)
                        .onTapGesture {
                            withAnimation(.bouncy) {
                                self.isTab = true
                            }
                        }
                        .onSubmit {
                            if self.text.isEmpty {
                                withAnimation(.bouncy) {
                                    self.isTab = false
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
    }
}

#Preview {
    QvickTextField(text: .constant("ddd"), prompt: "비밀번호를 입력해주세요", icon: "person.fill", isSecure: false)
}
