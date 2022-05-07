//
//  ContentView.swift
//  Ex13_Scroll_SwiftUI
//
//  Created by 송윤근 on 2022/05/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack{
            ScrollView() {
                VStack{
                    
                    ForEach(1..<30){ index in
                        Text("Count : \(index)")
                            .font(.largeTitle)
                    }
                }
                .frame(maxWidth : .infinity)
                // 왜 안쪽의 뷰에 가로 맥스를 주는지
            }
            .frame( height: 200)
            .background(.orange)
            
            Divider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack{
                    ForEach(1..<30){ index in
                        Text("Count : \(index)")
                            .font(.largeTitle)
                    }
                }
            }
            .frame( height: 200)
            .background(.purple)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
