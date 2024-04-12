//
//  HoldEm.swift
//  CasinoGames
//
//  Created by Christopher Leonard on 4/11/24.
//

import SwiftUI

struct HoldEm: View {
    //ai vars
    @State var enemyAiNames = ["Joey","Micheal","Ben","Chris"]
    @State var enemyCoins = [2000,2000,2000,2000]
    @State var enemyHands: [[Card]] = [[],[],[],[]]
    
    //player vars
    @State var playerCoins = 2000
    @State var playerHand: [Card] = []
    
    //misc vars
    @State var scale:Double = 2.5
    @State var dealerChatting = "Hello chat"
    @State var flip = false
    @State var onDeck: [Card] = []
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("HoldEmDealer")
                    .resizable()
                    .frame(maxWidth:80*scale,maxHeight: 80*scale)
                    .overlay {
                        Text("Mr. Dealer")
                            .font(.largeTitle)
                            .bold()
                            .position(x:100,y:220)
                        Text(dealerChatting)
                            .position(x:100,y:250)
                            .italic()
                            .font(.title)
                    }
                Spacer()
            }
            Spacer()
            HStack {
                VStack {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                        Text(enemyAiNames[0])
                            .font(.title)
                        Text("$\(enemyCoins[0])")
                    }
                }
                Spacer()
                VStack {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                        Text(enemyAiNames[1])
                            .font(.title)
                        Text("$\(enemyCoins[1])")
                    }
                }
            }
            Spacer()
            HStack {
                VStack {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                        Text(enemyAiNames[2])
                            .font(.title)
                        Text("$\(enemyCoins[2])")
                    }
                }
                Spacer()
                VStack {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                        Text(enemyAiNames[3])
                            .font(.title)
                        Text("$\(enemyCoins[3])")
                    }
                }
            }
            Spacer()
            VStack {
                Text("Your hand").bold().font(.largeTitle)
                HStack {
                    ForEach(playerHand, id:\.self) {card in
                        let _ = print(card.imageName)
                        Image(card.imageName).resizable().frame(maxWidth:100, maxHeight: 120)
                    }
                }
                Text("$\(playerCoins)").bold().font(.largeTitle)
            }
        }
        .onAppear {
            enemyAiNames.shuffle()
        }
        .background(
            LinearGradient(colors: [Color(red: (0/255), green: (89/255), blue: (0/255)) ,.green], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    HoldEm()
}
