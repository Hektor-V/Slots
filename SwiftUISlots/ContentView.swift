//
//  ContentView.swift
//  SwiftUISlots
//
//  Created by Hector Vazquez on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    @State var credits = 1000
    
    var body: some View {
        
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            Text("Credits \(credits)")
            Spacer()
            HStack {
                            // The images were too wide to begin with so make sure you
                            // add the resizable and aspectRatio modifiers
                            Image("slot\(slot1)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Image("slot\(slot2)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Image("slot\(slot3)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
            Spacer()
            
            Button {
                // Randomize the numbers
                               slot1 = Int.random(in: 1...3)
                               slot2 = Int.random(in: 1...3)
                               slot3 = Int.random(in: 1...3)
                               
                               // Update credits based on match or not
                               if slot1 == slot2 && slot2 == slot3 {
                                   // Match
                                   credits += 15
                               }
                               else {
                                   credits -= 5
                               }
                
            } label: {
                Text("Spin")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.vertical, 10.0)
                    .padding(.horizontal,40.0)
                    .background(Color.pink)
                    .cornerRadius(25)
            }

           
                
            Spacer()
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
       
    }
}


