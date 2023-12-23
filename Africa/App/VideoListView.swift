//
//  VideoListView.swift
//  Africa
//
//  Created by MacBook Pro on 12/18/23.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapicImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }//: LOOP
            }//: List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button (action:{
                        videos.shuffle()
                        hapicImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }//: NavigationView
    }
}

#Preview {
    VideoListView()
}
