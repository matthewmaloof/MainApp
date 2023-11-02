//
//  NetworkInfoCard.swift
//  MyIpAddressLibrary
//
//  Created by Matthew Maloof on 11/1/23.
//

import SwiftUI

struct NetworkInfoCard: View {
    var ipInfo: IPInfo
    @Binding var isExpanded: Bool

    var body: some View {
        InfoCard(title: "Network Info", systemImage: "network", color: .orange, isExpanded: $isExpanded) {
            if isExpanded {
                IPInfoRow(title: "ASN", value: ipInfo.asn)
                IPInfoRow(title: "Organization", value: ipInfo.org)
                IPInfoRow(title: "Network", value: ipInfo.network)
            }
        }
    }
}
