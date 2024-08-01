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
    @State var isTab: Bool = false
    let isSecure: Bool
    
    public init(text: Binding<String>, prompt: String, isSecure: Bool) {
        self._text = text
        self.prompt = prompt
        self.isSecure = isSecure
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 340, height: 60)
            .foregroundStyle(.clear)
            .overlay {
                RoundedRectangle(cornerRadius: 15).stroke(isTab ? Color.primaryNormal : .lineAlternative)
                
                HStack(spacing: 20) {
                    Image(systemName: "person.fill")
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
                        .overlay {
                            if self.isTab {
                                Text(prompt)
                                    .foregroundStyle(.blue)
                                    .font(.pretendard(.regular, size: 11))
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
                    } else {
                        TextField(
                            text: $text,
                            prompt: Text(prompt).font(.label1Normal(.regular))
                        ) {
                            
                        }
                        .textInputAutocapitalization(.never)
                        .overlay {
                            if self.isTab {
                                Text(prompt)
                                    .foregroundStyle(.blue)
                                    .font(.pretendard(.regular, size: 11))
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
                }
                .padding(.horizontal, 20)
            }
    }
}

#Preview {
    QvickTextField(text: .constant(""), prompt: "이메일을 입력해주세요", isSecure: false)
}
