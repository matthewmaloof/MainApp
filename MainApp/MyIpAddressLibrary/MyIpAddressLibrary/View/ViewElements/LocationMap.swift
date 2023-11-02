//
//  LocationMap.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import SwiftUI

struct LocationMap: View {
    var latitude: Double
    var longitude: Double

    var body: some View {
        RepresentableMap(latitude: latitude, longitude: longitude)
    }
}
