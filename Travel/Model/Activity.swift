//
//  Activity.swift
//  Travel
//
//  Created by Sopnil Sohan on 20/5/22.
//

import Foundation

struct Activity: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let address: String
    let duration: String
    let occupancy: String
    let needBooking: Bool
    let price: String
    let previousPrice: String
}
