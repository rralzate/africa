//
//  MapView.swift
//  Africa
//
//  Created by MacBook Pro on 12/18/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion  = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        
        //MARK
        //Map(coordinateRegion: $region)
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent:{  item in
           
                   //(A) PIN: Old Style
                   //MapPin(coordinate: item.location, tint: .accentColor)
                   //(B) MARKER
            
                   //MapMarker(coordinate: item.location, tint: .accentColor)
            
                   //(C) CUSTOM BASIUC
//                    MapAnnotation(coordinate: item.location){
//                        Image("logo")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 32, height: 32, alignment: .center)
//                    }
                    //(D) CUSTOM ADVANCE ANNOTATION
                MapAnnotation(coordinate: item.location){
                    MapAnnotationView(location: item)
                }//:MAP
               })
                .overlay(
                    HStack(alignment: .center, spacing: 12) {
                        Image("compass")
                            .resizable()
                            .scaledToFit()
                        .frame(width: 48, height: 48, alignment: .center)
                        
                        VStack(alignment: .leading, spacing: 3){
                            HStack{
                                Text("Latitude:")
                                    .font(.footnote)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.accentColor)
                                Spacer()
                                Text("\(region.center.latitude)")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                
                            }//:HStack
                            Divider()
                            HStack{
                                Text("Longitude:")
                                    .font(.footnote)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.accentColor)
                                Spacer()
                                Text("\(region.center.longitude)")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                
                            }//:HStack
                        }
                        
                    }//: HStack
                        .padding(.vertical, 12)
                        .padding(.horizontal, 16)
                        .background(
                            Color.black
                                .cornerRadius(8)
                                .opacity(0.6)
                                
                        )
                        .padding()
                    ,alignment: .top
                )
    
        
    }
}

#Preview {
    MapView()
}
