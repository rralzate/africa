//
//  VideoModel.swift
//  Africa
//
//  Created by MacBook Pro on 12/19/23.
//

import Foundation

struct Video: Codable,Identifiable{
    
    let id: String
    let name: String
    let headline: String
    
    //Computer Property
    
    var thumbnail: String{
        "video-\(id)"
    }
    
}
