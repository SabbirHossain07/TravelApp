//
//  HomeView.swift
//  Travel
//
//  Created by Sopnil Sohan on 20/5/22.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @StateObject var placeFinder = PlaceFinder()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //MARK: Map view with marker of places
            
            Map(coordinateRegion: $placeFinder.region, annotationItems: placeFinder.spots) { spot in
                MapAnnotation(coordinate: spot.location, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                    MapMarker(placeName: spot.name)
                }
            }
            .ignoresSafeArea()
            //MARK: Place card pager view
            
            HStack {
                
                PagerView(count: placeFinder.spots.count, index: $placeFinder.currentIndex, viewWidth: UIScreen.screenWidth - 40) {
                    ForEach(placeFinder.spots) { place in
                        PlaceCardView(place: place)
                            .frame(width: UIScreen.screenWidth - 60, height: 380)
                            .onTapGesture {
                                withAnimation {
                                    placeFinder.selectedPlace = place
                                }
                            }
                    }
                }
            }
            .opacity(placeFinder.selectedPlace == nil ? 1.0 : 0.0)
            
            if placeFinder.selectedPlace != nil {
                //MARK: Place detail View
                PlaceDetailView(placeFinder: placeFinder)
            }
           
        }
        .onAppear {
            placeFinder.currentIndex = 0
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
