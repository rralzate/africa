//
//  CreditsView.swift
//  Africa
//
//  Created by MacBook Pro on 12/21/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
            Copyright © Ricardo Reyes
            All right reserved
            Better Apps ♡ Less Code
            """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        
        }//: VStack
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
