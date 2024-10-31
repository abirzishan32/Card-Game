//
//  ContentView.swift
//  simpleapp
//
//  Created by Gaming Lab on 31/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    
    @State var cpuCard = "card13"
    
    
     @State var playerScore = 0
     @State var cpuScore = 0
    
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
                
                Spacer() // Space betweeen the top and the logo
                Image("logo")
                
                // Card Stack
                HStack{
                    
                    Image(playerCard)
//                    Spacer()
                    Image(cpuCard)
                }
                
                Spacer() // Space between card and button
//                Image("button")
                Button {
                    deal()
                    
                }
            label:{
                Image("button")
            }
                //Player Name and score stack
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0) // Padding Between Player name and Player Score
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0) // Padding Between Player name and Player Score
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                
                Spacer() // Space between the low level and Player CPU Scorecard
            }
        }
    }
    func deal() {
        
        //Randomize Players Cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        
        
        
        //Randomized the cpus Card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        //Update the Scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
            
        }
        else if cpuCardValue>playerCardValue {
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}



