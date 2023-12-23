//
//  LocationsModel.swift
//  Africa
//
//  Created by MacBook Pro on 12/19/23.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable{
    
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //Computed property
    var location: CLLocationCoordinate2D{
       CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
