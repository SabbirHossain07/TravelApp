//
//  FlightView.swift
//  Travel
//
//  Created by Sopnil Sohan on 21/5/22.
//

import SwiftUI

struct FlightView: View {
  
    var body: some View {
        ZStack {
          RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .frame(height: 220)
            VStack(spacing: 40) {
                HStack(spacing: 24) {
                    FlightItemView(airport: "BRATISLAVA", shortAirport: "BTS", time: "15:00")
                    
                    HStack {
                        Image(systemName: "airplane")
                        
                        Image(systemName: "ellipsis")
                    }
                    
                    FlightItemView(airport: "ESMERALDS", shortAirport: "ESM", time: "08:00")
                    
                    Spacer()
                }
                HStack {
                    InfoItemView(title: "FLIGHT", description: "BE2356")
                    
                    Spacer()
                    
                    InfoItemView(title: "BOARDING", description: "14:30")
                    
                    Spacer()
                    
                    Text("KTM")
                        .foregroundColor(Color.blue)
                        .font(.system(size: 20, weight: .black))
                }
                
            }
            .padding(20)
        }
    }
}

struct FlightView_Previews: PreviewProvider {
    static var previews: some View {
        FlightView()
    }
}
