//
//  BasicInfoCard.swift
//  MyIpAddressLibrary
//
//  Created by Matthew Maloof on 11/1/23.
//

import SwiftUI

struct BasicInfoCard: View {
    var ipInfo: IPInfo
    @Binding var isExpanded: Bool

    var body: some View {
        InfoCard(title: "Basic Info", systemImage: "info.circle.fill", color: .blue, isExpanded: $isExpanded) {
            if isExpanded {
                IPInfoRow(title: "IP", value: ipInfo.ip)
            }
        }
    }
}
