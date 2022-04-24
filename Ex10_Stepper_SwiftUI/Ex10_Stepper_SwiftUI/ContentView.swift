//
//  ContentView.swift
//  Ex10_Stepper_SwiftUI
//
//  Created by 송윤근 on 2022/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count : Int = 0
    @State private var age : Int = 0
    
    func incrementStepper() {
        print("increment")
        self.age += 1
    }
    func decrementStepper(){
        print("decrement")
        self.age -= 1
    }
    
    var body: some View {
        VStack{
            Form{
                Stepper(value: self.$count, in: 0...10, label:{
                    Text("Count")
                }
                )
                Text("카운트 : \(self.count)")
                
                Stepper(onIncrement: incrementStepper, onDecrement: decrementStepper, label: {
                    Text("Age")
                })
                
                Text("Age : \(self.age)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
