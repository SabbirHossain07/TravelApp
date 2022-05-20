//
//  FlightItemView.swift
//  Travel
//
//  Created by Sopnil Sohan on 21/5/22.
//

import SwiftUI


struct FlightItemView: View {
    let airport: String
    let shortAirport: String
    let time: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(airport)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.gray)
            Text(shortAirport)
                .font(.system(size: 32, weight: .bold))
            Text(time)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.white)
                .padding(5)
                .background(Color.orange)
                .cornerRadius(4)
        }
    }
}

struct FlightItemView_Previews: PreviewProvider {
    static var previews: some View {
        FlightItemView(airport: "ESMERALDS", shortAirport: "ESM", time: "08:00")
    }
}
