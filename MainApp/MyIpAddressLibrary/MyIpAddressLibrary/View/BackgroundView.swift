//
//  BackgroundView.swift
//  MyIpAddressLibrary
//
//  Created by Matthew Maloof on 11/1/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}
