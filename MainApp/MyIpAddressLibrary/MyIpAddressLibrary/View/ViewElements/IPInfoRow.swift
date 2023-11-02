//
//  IPInfoRow.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import SwiftUI

struct IPInfoRow: View {
    let title: String
    let value: String
    let icon: String?
    
    init(title: String, value: String, icon: String? = nil) {
        self.title = title
        self.value = value
        self.icon = icon
    }

    var body: some View {
        HStack {
            if let iconName = icon {
                Image(systemName: iconName)
                    .foregroundColor(.blue)
            }
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
            Text(value)
        }
    }
}
