//
//  ContentView.swift
//  Ex3_Text_SwiftUI
//
//  Created by 송윤근 on 2022/04/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //문자를 화면에 출력하는 컨트롤
        Text("Swift UI 입니다.Swift UI 입니다.Swift UI 입니다.")
            .fontWeight(.bold)
            .foregroundColor(Color(hue: 0.09, saturation: 0.766, brightness: 0.676))
            .multilineTextAlignment(.center)
            .padding(.all, 12.0)
            .font(.system(size: 30))
            .frame(width: 300, height: 300)
            .lineLimit(3)
            .border(Color.purple, width: 2)
            .background(Color.white)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
