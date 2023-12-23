//
//  InsetMapView.swift
//  Africa
//
//  Created by MacBook Pro on 12/19/23.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    
    @State private var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
        span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
    ))


    
    var body: some View {
        Map(position: $cameraPosition)
            .overlay(
                NavigationLink( destination: MapView()){
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }//:HStack
                    .padding(.vertical,10)
                    .padding(.horizontal,14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                    }//:NavigationLink
                    .padding(12)
                ,alignment: .topTrailing
                )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews : PreviewProvider{
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
    
}
