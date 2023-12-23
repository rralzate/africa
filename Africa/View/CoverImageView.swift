//
//  CoverImageView.swift
//  Africa
//
//  Created by MacBook Pro on 12/18/23.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: BODY
    
    var body: some View {
        
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//: LOOP
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
       
    }
    
    //MARK: PREVIEW
}

#Preview {
    CoverImageView()
     
}
