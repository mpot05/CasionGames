//
//  CardData.swift
//  CasinoGames
//
//  Created by Christopher Leonard on 4/11/24.
//

import Foundation

struct Card: Hashable, Identifiable {
    var suit: String
    var symbol: String
    var imageName:String = ""
    var value: Int
    var id:String = UUID().uuidString
    
    init(suit: String, symbol: String, value: Int) {
        self.suit = suit
        self.symbol = symbol
        self.value = value
        
        imageName = "card\(suit)\(symbol)"
    }
    
}
