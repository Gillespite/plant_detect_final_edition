//
//  MapView.swift
//  dick1
//
//  Created by Jill on 2021/3/12.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
    @EnvironmentObject var mapData:MapViewModel
    func makeCoordinator() -> Coordinator {
        return MapView.Coordinator()
    }
    func makeUIView(context: Context) -> MKMapView {
        let view=mapData.mapView
        view.showsUserLocation=true
        view.delegate=context.coordinator
        return view
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    class Coordinator:NSObject,MKMapViewDelegate{
        
    }
}

