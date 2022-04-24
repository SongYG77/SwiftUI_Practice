//
//  ContentView.swift
//  Ex09_TextField_SwiftUI
//
//  Created by 송윤근 on 2022/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email : String = ""
    @State private var passowrd : String = ""
    var body: some View {
        
        
        VStack{
            
            VStack{
                
                TextField("이메일 입력", text: self.$email)
                SecureField("비밀번호 입력", text: self.$passowrd)
            }
            
            Text("입력된 이메일 : \(self.email)")
            Text("입력된 비밀번호 : \(self.passowrd)")
            
            //form view : 컨트롤이나 뷰를 이쁘게 형식 양식을 지정하여 꾸며준다.
            
            Form{
                VStack{
                    
                    TextField("이메일 입력", text: self.$email)
                        .keyboardType(.emailAddress)
                    Divider()
                    SecureField("비밀번호 입력", text: self.$passowrd)
                    Divider()
                }
                
                Text("입력된 이메일 : \(self.email)")
                
                Text("입력된 비밀번호 : \(self.passowrd)")
                
                HStack{
                    
                    Button(action: {
                        self.hidekeyboard()
                    }, label: {
                        Text("입력 완료")
                    })
                }
                
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

#if canImport(UIKit)

extension View{
    func hidekeyboard() {
        
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
