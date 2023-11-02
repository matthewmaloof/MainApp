//
//  FindMyIPView.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import SwiftUI

public struct FindMyIPView: View {
    @ObservedObject var viewModel: FindMyIPViewModel = FindMyIPViewModel(networkService: ActualNetworkService())
    @State private var showBasicInfo = true
    @State private var showLocationInfo = false
    @State private var showTechnicalInfo = false
    @State private var showNetworkInfo = false

    public init () {}
    public var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                if viewModel.isLoading {
                    LoadingView()
                }
                
                MainContentScrollView(
                    showBasicInfo: $showBasicInfo,
                    showLocationInfo: $showLocationInfo,
                    showTechnicalInfo: $showTechnicalInfo,
                    showNetworkInfo: $showNetworkInfo,
                    ipInfo: viewModel.ipInfo,
                    errorMessage: viewModel.errorMessage
                )
            }
            .onAppear {
                viewModel.fetchIPInfo(completion: nil)
            }
        }
    }
}
