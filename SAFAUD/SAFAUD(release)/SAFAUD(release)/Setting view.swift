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
    @State private var showalert = false
    @State private var samepassword = false
    @State private var value : CGFloat = 0
    @State private var ID = "safaud"
    @State private var IDcheck = ""
    @State private var passwordcheck = ""
    @State private var logout = false
    @State private var login = false
    @State private var showloginalert = false
    
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
                if(self.logout == false)
                {
                    Button(action: {
                        self.logout = true
                    }) {
                        Text("로그아웃")
                            .foregroundColor(Color.red).offset(x:150)
                    }
                }
                else {
                    Text("로그아웃")
                    .foregroundColor(Color.gray).offset(x:150)
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
                            Text("변경 비밀번호 재입력").font(.system(size: 15))
                            Spacer()
                            SecureField("Check your new password", text: $checknewpassowrd).font(.system(size: 15)).frame(width: 180, height: 15)
                        }.padding(.horizontal,10)
                        Spacer()
                        if $showalert.wrappedValue{
                            Text("변경 비밀번호와 변경 비밀번호 재입력이 같지 않습니다!").foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))).bold().font(.system(size: 17))
                            Spacer()
                        }
                        if $samepassword.wrappedValue{
                            Text("변경 비밀번호와 현재 비밀번호가 같습니다!").foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))).bold().font(.system(size: 17))
                             Spacer()
                        }
                        HStack{
                            Spacer()
                            Button(action: {
                                if(self.newpassword != self.checknewpassowrd)
                                {
                                    self.showalert = true
                                    self.passwordchange = true
                                }
                                else if (self.currentpassword == self.newpassword){
                                    self.samepassword = true
                                }
                                else{
                                    self.currentpassword = self.newpassword
                                    self.newpassword = ""
                                    self.checknewpassowrd = ""
                                    self.passwordchange = false
                                    self.showalert = false
                                    self.samepassword = false
                                }
                            }, label: {
                                Text("변경").font(.system(size: 16))
                            })
                            Spacer()
                            Button(action: {
                                self.passwordchange = false
                            }, label: {
                                Text("취소").font(.system(size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                            })
                            Spacer()
                        }
                    }.padding(.vertical,15)
                }.frame(width: 400, height: 170).cornerRadius(20).shadow(radius: 20).offset(y: -self.value).animation(.spring()).onAppear {
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) {
                        (noti) in
                        let value = noti.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                        let height = value.height
                        self.value = height
                    }
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) {
                        (noti) in
                        
                        self.value = 0
                    }
                }
            }
            if $logout.wrappedValue {
                ZStack{
                    VStack{
                        HStack{
                            VStack{
                                Spacer()
                                TextField("ID", text: $IDcheck).font(.system(size: 15)).frame(width:180, height: 15).textFieldStyle(RoundedBorderTextFieldStyle()).autocapitalization(.none)
                                Spacer()
                                SecureField("password", text: $passwordcheck).font(.system(size: 15)).frame(width:180, height: 15).textFieldStyle(RoundedBorderTextFieldStyle()).autocapitalization(.none)
                                Spacer()
                            }
                            Button(action: {
                                if((self.ID == self.IDcheck) && (self.currentpassword == self.passwordcheck))
                                {
                                    self.logout = false
                                    self.IDcheck = ""
                                    self.passwordcheck = ""
                                    self.showloginalert = false
                                }
                                else{
                                    self.showloginalert = true
                                }
                            }, label: {
                                Text("로그인").font(.system(size: 16))
                            })
                        }
                        if $showloginalert.wrappedValue{
                            Text("아이디와 비밀번호가 일치하지 않습니다. \n(아이디와 비밀번호는 대소문자를 구분합니다.)").foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))).bold().font(.system(size: 15))
                        }
                    }
                }.frame(width: 400, height: 130).cornerRadius(20).shadow(radius: 20).offset(y: -self.value).animation(.spring()).onAppear {
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) {
                        (noti) in
                        let value = noti.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                        let height = value.height
                        self.value = height
                    }
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) {
                        (noti) in
                        
                        self.value = 0
                    }
                }
            }
        }
    }
}

struct Setting_view_Previews: PreviewProvider {
    static var previews: some View {
        Setting_view()
    }
}
