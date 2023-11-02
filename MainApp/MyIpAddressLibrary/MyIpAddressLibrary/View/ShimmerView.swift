//
//  ShimmerView.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import SwiftUI

struct ShimmerView<Content: View>: View {
    var baseColor: Color
    var shineColor: Color
    @Binding var show: Bool
    let content: Content
    
    @State private var gradientStart: CGFloat = -1 // Start position
    @State private var gradientEnd: CGFloat = 0 // End position
    
    init(baseColor: Color, shineColor: Color, show: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) {
        self.baseColor = baseColor
        self.shineColor = shineColor
        self._show = show
        self.content = content()
    }
    
    var body: some View {
        content
            .opacity(show ? 0.4 : 1.0)
            .overlay(
                Group {
                    if show {
                        LinearGradient(
                            gradient: Gradient(
                                colors: [baseColor, shineColor, baseColor]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .frame(width: 200) // Set the frame of the gradient
                        .offset(x: gradientStart)
                        .animation(
                            Animation.linear(duration: 1)
                                .repeatForever(autoreverses: false),
                            value: gradientStart
                        )
                    }
                }
            )
            .onAppear() {
                if show {
                    self.gradientStart = UIScreen.main.bounds.width
                    self.gradientEnd = self.gradientStart + 200
                }
            }
    }
}
