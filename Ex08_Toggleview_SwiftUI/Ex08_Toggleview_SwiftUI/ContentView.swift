//
//  ContentView.swift
//  Ex08_Toggleview_SwiftUI
//
//  Created by 송윤근 on 2022/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isToggleOn = false
    //@State 어노테이션
    //State변수 : 컨트롤 뷰와 변수 사이의 데이터 공유
    //컨트롤에서 변수를 참조하여 업데이트 시킴 중간다리 역할
    var body: some View {
        VStack{
            Toggle(isOn: self.$isToggleOn, //isOn : 상태 변수
                   //상태 변수를 등록해줄 때는 $를 붙여 스테이트 변수를 업데이트 해주겠다는 뜻.
                   label: {
                Text("Toggle")
            })
            .frame(width: 110)
            
            Divider()
            
            if self.isToggleOn {
                Text("Toggle On")
            }
            else {
                Text("Toggle OFF")
            }
            
            Divider()
            
            Toggle(isOn: self.$isToggleOn, label: {
                
                Text("Toggle")
            })
            .frame(width: 110)
            .padding()
            .toggleStyle(SwitchToggleStyle(tint: Color.orange))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
