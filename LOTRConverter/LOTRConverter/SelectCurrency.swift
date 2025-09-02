//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Allana Idalgo on 29/08/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency
    @State var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                IconGrid(currency: topCurrency);
                
                Text("Select the currency you would liek to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
                IconGrid(currency: bottomCurrency);
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    SelectCurrency(topCurrency: .copperPenny, bottomCurrency: .copperPenny)
}
