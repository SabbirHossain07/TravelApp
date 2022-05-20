//
//  Place.swift
//  Travel
//
//  Created by Sopnil Sohan on 20/5/22.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let index: Int
    let name: String
    let date: String
    let imageName: String
    let location: CLLocationCoordinate2D
    let departureDayLeft: String
    let activities: [Activity]
}


