import SwiftUI

public struct QvickTextField: View {
    @FocusState private var isTab: Bool

    @Binding var text: String
    let prompt: String
    let icon: String
    let isSecure: Bool
    
    public init(text: Binding<String>, prompt: String, icon: String, isSecure: Bool = false) {
        self._text = text
        self.prompt = prompt
        self.icon = icon
        self.isSecure = isSecure
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .foregroundStyle(.clear)
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(isTab || !text.isEmpty ? Color.primaryNormal : .lineAlternative)
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
                    
                    Group {
                        if isSecure {
                            SecureField(
                                "qvickSecure",
                                text: $text,
                                prompt:
                                    Text(prompt)
                                    .font(.label1Normal(.regular))
                            )
                            
                        } else {
                            TextField(
                                "qvickText",
                                text: $text,
                                prompt: Text(prompt).font(.label1Normal(.regular))
                            )
                            
                        }
                    }
                    .focused($isTab)
                    
#if os(iOS)
                    .textInputAutocapitalization(.never)
#endif
                    
                }
                .padding(.horizontal, 20)
            }
            .padding(.horizontal)
    }
}

#Preview {
    VStack {
        QvickTextField(text: .constant(""), prompt: "비밀번호를 입력해주세요", icon: "person.fill")
        
        QvickTextField(text: .constant(""), prompt: "비밀번호를 입력해주세요", icon: "person.fill")
        
        QvickTextField(text: .constant(""), prompt: "비밀번호를 입력해주세요", icon: "person.fill")
    }
}
