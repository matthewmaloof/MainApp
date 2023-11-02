//
//  LocationInfoCard.swift
//  MyIpAddressLibrary
//
//  Created by Matthew Maloof on 11/1/23.
//

import SwiftUI

struct LocationInfoCard: View {
    var ipInfo: IPInfo
    @Binding var isExpanded: Bool

    var body: some View {
        InfoCard(title: "Location Info", systemImage: "map.fill", color: .green, isExpanded: $isExpanded) {
            if isExpanded {
                NavigationLink(destination: LocationMap(latitude: ipInfo.latitude, longitude: ipInfo.longitude)) {
                    Text("View on Map")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                IPInfoRow(title: "City", value: ipInfo.city)
                IPInfoRow(title: "Region", value: ipInfo.region)
                IPInfoRow(title: "Country", value: ipInfo.country_name)
            }
        }
    }
}
