//
//  SwiftUIView.swift
//  
//
//  Created by hyk on 7/28/24.
//

import SwiftUI

struct QvickTabView<Content: View>: View {
    @Binding var selection: QvickTabItem
    let content: Content
    
    public init(selection: Binding<QvickTabItem>, @ViewBuilder content: () -> Content) {
            self._selection = selection
            self.content = content()
        }
    
    var body: some View {
        ZStack {
            content
            
            VStack {
                Spacer()
                
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(height: 70)
                    .shadow(color: .black.opacity(0.05), radius: 4, y: -8)
                    .overlay {
                        HStack(spacing: 80) {
                            ForEach(QvickTabItem.allCases, id: \.self) { item in
                                Button {
                                    self.selection = item
                                } label: {
                                    item.icon
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 38)
                                        .foregroundStyle(item == selection ? .blue : Color(red: 217/255, green: 217/255, blue: 217/255))
                                }
                                .disabled(item == selection)
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    QvickTabView<EmptyView>(selection: .constant(QvickTabItem.home)) {
        EmptyView()
    }
}
