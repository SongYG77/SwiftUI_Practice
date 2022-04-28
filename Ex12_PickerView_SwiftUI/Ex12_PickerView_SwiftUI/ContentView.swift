//
//  ContentView.swift
//  Ex12_PickerView_SwiftUI
//
//  Created by 송윤근 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var nameIndex : Int = 0
    
    var names = ["tom", "kim", "song", "park"]
    
    var body: some View {

        VStack{
            NavigationView{
                Form{
                    Section{
                        Picker(selection: self.$nameIndex, content: {
                            ForEach(0 ..< names.count) { index in
                                Text(self.names[index]).tag(index)
                            }
                            
                        }, label: {
                            Text("Names")
                        })
                        //ios 14부터 지원
                        .pickerStyle(SegmentedPickerStyle())
                        
                    }
                }.navigationBarTitle("Names")
            }
            
            Text("Picker Select : \(nameIndex)")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
