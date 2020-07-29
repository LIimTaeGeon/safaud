//
//  changepassword.swift
//  graph(v.1)
//
//  Created by gntech on 2020/04/28.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct changepassword: View {
    
    @State var newpassword : String = ""
    @State var checknewpassword : String = ""
    var body: some View {
        VStack{
            HStack{
                Text("기존 비밀번호")
                Spacer()
                Text("**********")
            }.padding(10)
            
            HStack{
                Text("새 비밀번호")
                Spacer()
                TextField("enter new password", text: $newpassword)
            }.padding(10)
            
            HStack{
                Text("새 비밀번호 확인")
                Spacer()
                TextField("check your new password",text: $checknewpassword)
            }.padding(10)
            Button(action: {
                if(self.newpassword == self.checknewpassword)
                {}
                else{
                    Text("Check your new password!")
                }
            }) {
                Text("확인")
            }
        }
        
        
    }
}

struct changepassword_Previews: PreviewProvider {
    static var previews: some View {
        changepassword()
    }
}
