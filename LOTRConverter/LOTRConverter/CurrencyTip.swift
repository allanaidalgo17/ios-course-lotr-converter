//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Allana Idalgo on 03/09/25.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can type the left or right currency symbol to change the currency.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
