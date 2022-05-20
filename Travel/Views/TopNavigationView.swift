//
//  TopNavigationView.swift
//  Travel
//
//  Created by Sopnil Sohan on 21/5/22.
//

import SwiftUI

struct TopNavigationView: View {
    @ObservedObject var placeFinder: PlaceFinder
    
    var body: some View {
        HStack {
            Button {
                withAnimation {
                    placeFinder.selectedPlace = nil
                }
            } label: {
                Image(systemName: "arrow.left")
                    .padding()
                    .foregroundColor(.black)
            }
            Spacer()
            
            Text(placeFinder.selectedPlace?.name ?? "")
                .font(.system(size: 20, weight: .bold))
            
            Spacer()
            
            Image(systemName: "paperplane")
                .padding()
        }
    }
}

struct TopNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationView(placeFinder: PlaceFinder())
    }
}
