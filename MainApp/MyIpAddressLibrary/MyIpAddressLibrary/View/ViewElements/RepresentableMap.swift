//
//  RepresentableMap.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import MapKit
import SwiftUI

struct RepresentableMap: UIViewRepresentable {
    var latitude: Double
    var longitude: Double
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        // Add pin
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        uiView.addAnnotation(annotation)
    }
}
