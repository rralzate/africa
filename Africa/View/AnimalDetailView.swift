//
//  AnimalDetailView.swift
//  Africa
//
//  Created by MacBook Pro on 12/18/23.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack (alignment: .center, spacing: 20){
                //Hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(.accentColor)
                  
                
                //Gallery
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in picture")
                    
                    InsetGalleryView(animal: animal)
                
                }
                .padding(.horizontal)
                //Facts
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                    
                }
                .padding(.horizontal)
                
                //Description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .layoutPriority(1)
                    
                }
                .padding(.horizontal)
                
                //Map
                Group{
                    HeadingView(headingImage: "map", headingText: "Map")
                    
                    InsetMapView()
                    
                }
                .padding(.horizontal)
            
                //Link
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWebLinkView(animal: animal)
                    
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//: ScrollView
        
    }
}

struct AnimalDetailView_Previews : PreviewProvider{
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        AnimalDetailView(animal: animals[1])
        
    }
    
}

