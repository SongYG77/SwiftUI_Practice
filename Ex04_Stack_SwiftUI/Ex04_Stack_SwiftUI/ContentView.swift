//
//  ContentView.swift
//  Ex04_Stack_SwiftUI
//
//  Created by 송윤근 on 2022/04/15.
//

import SwiftUI

//stack - 쌓다.
// 가로나 세로 z축으로 쌓는 것
// HStack VStack ZStack

// 구조체로 뷰를 만듬.
struct mytextview : View {

    var body: some View{
        
        Text("Hello, SwiftUI!")
            .padding(.all, 16)
            .border(Color.blue, width: 3)
            .background(Color.gray)
    }
    
}

struct ContentView: View {
    var body: some View {
        
        VStack{
            HStack{ //수평
                mytextview()
                mytextview()
                mytextview()
            }
            Divider()
            //구분선
            VStack{//수직
                mytextview()
                mytextview()
                mytextview()
            }
            Divider()
            HStack(alignment: .center, spacing: 10){
                mytextview()
                mytextview()
                mytextview()
            }
            Divider()
            ZStack {//상하
                Color.yellow.edgesIgnoringSafeArea(.all)
                Color.red.frame(width: 200, height: 200)
                Color.blue.frame(width: 100, height: 100)
            }
            //겹치는 뷰 적용
            .padding()
            .border(Color.blue,width: 3)
            
            Divider()
            HStack(alignment: .top, spacing: 10) {
                Text("Hello").font(.caption)
                Text("Hello")
                Text("Hello").font(.title)
                Text("Hello").font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
