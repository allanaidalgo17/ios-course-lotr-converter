//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Allana Idalgo on 28/08/25.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let rightmage: ImageResource
    let text: String
     
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image(rightmage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece, rightmage: .goldpenny, text: "1 Gold Pieace = 4 Gold Pennies")
}
