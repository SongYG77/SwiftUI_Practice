//
//  ContentView.swift
//  Ex05_SpacerDivider_SwiftUI
//
//  Created by 송윤근 on 2022/04/15.
//

import SwiftUI


//Spacer 와 Divider 차이
//Spacer은 공간, Divider은 하나의 뷰로 구분자 역할
struct ContentView: View {
    var body: some View {
        
        VStack {
            VStack{
                Spacer()
                
                Color.yellow
                    .frame(height: 100)
                Spacer()
                
                Color.red
                    .frame(height: 100)
                Spacer()
            }
            HStack{
                Spacer()
                
                Color.yellow
                    .frame(width: 100)
                Spacer()
                
                Color.red
                    .frame(width: 100)
                Spacer()
            }
            VStack{
                Divider()
                
                Color.yellow
                    .frame(height: 100)
                Divider()
                
                Color.red
                    .frame(height: 100)
                Divider()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
