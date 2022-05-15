//
//  ContentView.swift
//  Ex14_Form_SwiftUI
//
//  Created by 송윤근 on 2022/05/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var username : String = ""
    @State var isPrivate : Bool = true
    @State var notificationsEnable : Bool = false
    @State private var previewIndex : Int = 0
    let previewOptions : Array<String> = [
    "Always", "when Unlocked", "Never"]
    var body: some View {
        
        //UI의 표준 양식을 지원하는 뷰. - Form
        NavigationView{
            Form{
                Section(header : Text("Profile"), content: {
                    TextField("Username" , text: self.$username)
                    Toggle(isOn: self.$isPrivate, label: {
                        Text("Private account")
                    })
                })
                Section(header: Text("NOTIFICATION"), content: {
                    
                    Toggle(isOn: self.$notificationsEnable, label: {
                        Text("Enabled")
                    })
                    Picker(selection: self.$previewIndex, label: Text("Show Previews"), content: {
                        ForEach(0..<previewOptions.count){
                            index in
                            Text(self.previewOptions[index])
                        }
                        
                    })
                    
                })
                
                Section(header: Text("ABOUT")){
                    HStack{
                        Text("Version")
                        Spacer()
                        Text("2.0.1")
                    }
                }
                
                Section{
                    Button(action: {
                        print("Button Clicked")
                    }, label: {
                        Text("Reset All Setting")
                    })
                }
            }.navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previewss: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
