//
//  CenterModifier.swift
//  Africa
//
//  Created by MacBook Pro on 12/22/23.
//

import SwiftUI

struct CenterModifier: ViewModifier{
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
