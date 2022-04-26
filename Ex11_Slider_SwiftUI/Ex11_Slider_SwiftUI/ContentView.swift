//
//  ContentView.swift
//  Ex11_Slider_SwiftUI
//
//  Created by 송윤근 on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count : Float = 0
    @State private var age : Float = 0
    var body: some View {
        VStack{
            Form{
                
                Slider(value: self.$count, in: 1...10, label: {
                    Text("count")
                })
                Text("Count : \(Int(self.count))")
                
                Slider(value: self.$age, in: 0...150, label: {
                    Text("age)")
                })
                Text("Age : \(Int(self.age))")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
