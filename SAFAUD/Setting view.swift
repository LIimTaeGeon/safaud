//
//  Setting view.swift
//  graph(v.1)
//
//  Created by gntech on 2020/01/09.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct Setting_view: View {
    
    @State private var passwordchange = false
    @State private var currentpassword = "password"
    @State private var newpassword = ""
    @State private var checknewpassowrd = ""
    
    var body: some View {
        VStack {
            CircleImage()
            Form {
                Section {
                    HStack {
                        Text("이름")
                        Spacer()
                        Text("임태건").font(.caption).foregroundColor(Color.gray)
                    }
                    HStack {
                        Text("아이디")
                        Spacer()
                        Text("Whakmapakssi").font(.caption).foregroundColor(Color.gray)
                    }
                    HStack{
                        Text("비밀번호")
                        Spacer()
                        Button(action: {
                            self.passwordchange = true
                        }) {
                            Text("변경").font(.caption)
                        }
                    }
                    HStack{
                        Text("나이")
                        Spacer()
                        Text("23").font(.caption).foregroundColor(Color.gray)
                    }
                    HStack{
                        Text("보호자 연락처")
                        Spacer()
                        Text("010-0000-0000")
                            .font(.caption)
                            .foregroundColor(Color.gray)
                    }
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("로그아웃")
                        .foregroundColor(Color.red).offset(x:150)
                }
            }
            if $passwordchange.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        HStack{
                            Text("현재 비밀번호").font(.system(size: 15))
                            Spacer()
                            SecureField("Enter a current password", text: $currentpassword).font(.system(size: 15)).frame(width: 180, height: 15)
                        }.padding(.horizontal,10)
                        Spacer()
                        HStack{
                            Text("변경 비밀번호").font(.system(size: 15))
                            Spacer()
                            SecureField("Enter a new password", text: $newpassword).font(.system(size: 15)).frame(width: 180, height: 15)
                        }.padding(.horizontal,10)
                        Spacer()
                        HStack{
                            Text("변경 비밀번호 확인").font(.system(size: 15))
                            Spacer()
                            SecureField("Check your new password", text: $checknewpassowrd).font(.system(size: 15)).frame(width: 180, height: 15)
                        }.padding(.horizontal,10)
                        Button(action: {
                            if(self.newpassword != self.checknewpassowrd)
                            {
                                self.passwordchange = true
                            }
                            else{
                                self.passwordchange = false
                            }
                        }, label: {
                            Text("변경").font(.system(size: 15))
                        })
                    }.padding(.vertical,15)
                }.frame(width: 400, height: 170).cornerRadius(20).shadow(radius: 20)
            }
        }
        
    }
}

struct Setting_view_Previews: PreviewProvider {
    static var previews: some View {
        Setting_view()
    }
}
