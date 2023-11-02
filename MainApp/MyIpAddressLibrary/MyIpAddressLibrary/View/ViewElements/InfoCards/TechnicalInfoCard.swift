//
//  TechnicalInfoCard.swift
//  MyIpAddressLibrary
//
//  Created by Matthew Maloof on 11/1/23.
//

import SwiftUI

struct TechnicalInfoCard: View {
    var ipInfo: IPInfo
    @Binding var isExpanded: Bool

    var body: some View {
        InfoCard(title: "Technical Info", systemImage: "gearshape.fill", color: .purple, isExpanded: $isExpanded) {
            if isExpanded {
                IPInfoRow(title: "IP Version", value: ipInfo.version)
                IPInfoRow(title: "Timezone", value: ipInfo.timezone)
                IPInfoRow(title: "Languages", value: ipInfo.languages)
            }
        }
    }
}
