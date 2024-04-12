//
//  Deck.swift
//  CasinoGames
//
//  Created by Benjamin Yeager on 4/11/24.
//

import Foundation
class Deck: ObservableObject
{
    @Published var cards: [Card] = []
    
    init()
    {
        loadCards()
    }
    
    
    func loadCards()
    {
        cards.removeAll()
        let suits : [String] = ["Hearts", "Clubs", "Diamonds", "Spades"]
        let symbols : [String] = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
        
        
        for suit in suits
        {
            for symbol in symbols {
                var val = 10
                if symbol == "J" || symbol == "Q" || symbol == "K"
                {
                    val = 10
                }
                else if symbol == "A"
                {
                    val = 11
                }
                else
                {
                    val = Int(symbol) ?? 0
                }
                cards.append(Card(suit: suit, symbol: symbol, value: val))
            }
        }
        shuffle()
    }
    func dealCard() -> Card
    {
        if cards.count > 0
        {
            return cards.removeLast()
        }
        else
            {
            loadCards()
            return dealCard()
        }
    }
    func shuffle()
    {
        cards.shuffle()
    }
    func discard()
    {
        cards.removeLast()
    }
}
