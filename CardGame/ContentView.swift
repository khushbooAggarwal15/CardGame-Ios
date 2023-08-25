//
//  ContentView.swift
//  CardGame
//
//  Created by MacBook on 12/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card2"
    @State private var cpuCard = "card2"
    @State private var playerCount = 0
    @State private var cpuCount = 0
    var body: some View {
  
        
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    if playerRandom > cpuRandom
                    { playerCount += 1}
                   else if playerRandom < cpuRandom
                    { cpuCount += 1 }
                } label: {
                    Image("dealbutton")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerCount))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpuCount))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                
                Spacer()
            }
        }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
