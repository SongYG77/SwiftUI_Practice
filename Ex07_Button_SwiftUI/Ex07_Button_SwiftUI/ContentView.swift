//
//  ContentView.swift
//  Ex07_Button_SwiftUI
//
//  Created by 송윤근 on 2022/04/20.
//

import SwiftUI

struct ContentView: View {
    
    func play() {
        print("func Clicked")
    }
    
    var body: some View {
        VStack{
            Button(action: {
                print("clicked")
            }, label: {
                Text("button")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .font(.title)
                    
            })
            
            Divider()
            
            Button(action: {
                print("Clicked2")
            }, label: {
                Text("Button2")
                    .foregroundColor(Color.purple)
                    .font(.title)
                    .padding()
                    .border(Color.purple, width: 2)
            })
            Divider()
            
            Button(action: play, label: {
                Image(systemName: "play.circle")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
            })
            Divider()
            
            Button(action: {
                print("Play Clicked")
            }, label: {
                HStack{
                Image(systemName: "play.circle")
                    .font(.title)
                Text("Play")
                    .font(.title)
                    .fontWeight(.semibold)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .ignoresSafeArea()
                .cornerRadius(40)
            })
            
            Divider()
            
            Button(action: {
                print("PlayClicked")
            }, label: {
                HStack{
                    Image(systemName: "play.circle")
                        .font(.title)
                    Text("Play")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.purple,.gray]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
            })
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
