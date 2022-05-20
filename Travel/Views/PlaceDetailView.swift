//
//  PlaceDetailView.swift
//  Travel
//
//  Created by Sopnil Sohan on 21/5/22.
//

import SwiftUI
import MapKit

struct PlaceDetailView: View {
    @ObservedObject var placeFinder: PlaceFinder
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.7))
                .ignoresSafeArea()
            VStack {
                //MARK: Top navigation View
                TopNavigationView(placeFinder: placeFinder)
                
                ScrollView(.vertical, showsIndicators: false) {
                    //MARK: Flight View
                    FlightView()
                    //MARK: Activites Views
                    ForEach(placeFinder.selectedPlace?.activities ?? []) { activity in
                        ActivityView(activity: activity)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
