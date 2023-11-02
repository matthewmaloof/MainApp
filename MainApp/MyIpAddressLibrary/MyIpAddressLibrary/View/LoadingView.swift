//
//  LoadingView.swift
//  MyIpAddressLibrary
//
//  Created by Matthew Maloof on 11/1/23.
//

import SwiftUI

struct LoadingView: View {
    @State private var gradientStart: CGFloat = -1
    
    var body: some View {
        Text("Fetching IP information...")
            .font(.title)
            .overlay(
                Group {
                    LinearGradient(
                        gradient: Gradient(colors: [Color.gray.opacity(0.5), Color.gray.opacity(0.2), Color.gray.opacity(0.5)]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .frame(width: 200)
                    .offset(x: gradientStart)
                    .animation(
                        Animation.linear(duration: 1)
                            .repeatForever(autoreverses: false),
                        value: gradientStart
                    )
                }
            )
            .onAppear {
                self.gradientStart = 1
            }
    }
}

