//
//  ErrorCard.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import SwiftUI

struct ErrorCard: View {
    let errorMessage: String
    
    var body: some View {
        VStack {
            HStack {
                Label("Error", systemImage: "exclamationmark.triangle.fill")
                    .font(.headline)
                    .foregroundColor(.red)
                Spacer()
            }
            .padding()
            .background(Color.white.opacity(0.9))
            
            Text(errorMessage)
                .foregroundColor(.red)
                .padding()
                .background(Color.white.opacity(0.7))
        }
        .cornerRadius(15)
        .shadow(color: .red.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}
