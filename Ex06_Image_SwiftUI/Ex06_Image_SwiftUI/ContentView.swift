//
//  ContentView.swift
//  Ex06_Image_SwiftUI
//
//  Created by 송윤근 on 2022/04/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("SampleCat")
                .resizable()
                .scaledToFit()
            
            Divider()
            
            Image("SampleCat2")
                .resizable()
                .scaledToFit()
                .frame(width: 250.0, height: 250.0, alignment: .center)
            
            Image(systemName: "play.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.red)
            Text("Cat")
                .background( Image("SampleCat")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                )
                .frame(width: 200, height: 200, alignment: .center)
            //크기
                .foregroundColor(Color.white)
            // 텍스트칼라
                .clipShape(Circle())
            //모양
                .shadow(radius: 10)
            //그림자
                .overlay(Circle().stroke(Color.red, lineWidth: 3))
            //테두리
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
