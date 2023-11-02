//
//  InfoCard.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import SwiftUI

struct InfoCard<Content: View>: View {
    let title: String
    let systemImage: String
    let color: Color
    let content: Content
    @Binding var isExpanded: Bool
    
    init(title: String, systemImage: String, color: Color, isExpanded: Binding<Bool> = .constant(true), @ViewBuilder content: () -> Content) {
        self.title = title
        self.systemImage = systemImage
        self.color = color
        self.content = content()
        self._isExpanded = isExpanded
    }
    
    var body: some View {
        VStack {
            HStack {
                Label(title, systemImage: systemImage)
                    .font(.headline)
                    .foregroundColor(color)
                Spacer()
                Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                    .foregroundColor(color)
            }
            .padding()
            .background(Color.white.opacity(0.9))
            .onTapGesture {
                withAnimation {
                    self.isExpanded.toggle()
                }
            }
            
            if isExpanded {
                content
                    .padding()
                    .background(Color.white.opacity(0.7))
            }
        }
        .cornerRadius(15)
        .shadow(color: color.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}
