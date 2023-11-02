//
//  MainContentScrollView.swift
//  MyIpAddressLibrary
//
//  Created by Matthew Maloof on 11/1/23.
//

import SwiftUI

struct MainContentScrollView: View {
    @Binding var showBasicInfo: Bool
    @Binding var showLocationInfo: Bool
    @Binding var showTechnicalInfo: Bool
    @Binding var showNetworkInfo: Bool
    
    var ipInfo: IPInfo?
    var errorMessage: String?
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                if let ipInfo = ipInfo {
                    BasicInfoCard(ipInfo: ipInfo, isExpanded: $showBasicInfo)
                    LocationInfoCard(ipInfo: ipInfo, isExpanded: $showLocationInfo)
                    TechnicalInfoCard(ipInfo: ipInfo, isExpanded: $showTechnicalInfo)
                    NetworkInfoCard(ipInfo: ipInfo, isExpanded: $showNetworkInfo)
                } else if let error = errorMessage {
                    ErrorCard(errorMessage: error)
                }
            }
            .padding()
        }
    }
}
