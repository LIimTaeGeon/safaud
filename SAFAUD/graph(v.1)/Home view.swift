//
//  ContentView.swift
//  home(v.1)
//
//  Created by gntech on 2020/01/03.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct Home_view: View {
    
    @State var value1 = 0
    @State var value2 = 0
    @State var value3 = 0
    @State var value4 = 0
    @State var value5 = 0
    @State var value6 = 0
    @State var value7 = 0
    @State var value8 = 0
    @State var average = 0
    @State var secondvalue1 = 0
    @State var secondvalue2 = 0
    @State var secondvalue3 = 0
    @State var secondvalue4 = 0
    @State var secondvalue5 = 0
    @State var secondvalue6 = 0
    @State var secondvalue7 = 0
    @State var secondaverage = 0
    @State private var selfdiagnose = false
    @State private var selfdiagnose2 = false
    
    var body: some View {
        VStack {
            VStack {
                Text("SAFAUD")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                VStack {
                    VStack (alignment: .leading){
                        Text("나의 수면").font(.title).fontWeight(.bold).padding(.horizontal,15)
                        HStack {
                            Text("임태건").padding(.horizontal,15)
                            Spacer()
                        }
                    }
                }
                CircleImage()
                Text("수면 자가평가 점수 "+"\(average)").offset(y:25).font(.system(size: 25))
                Text("생리검사 점수 "+"\(secondaverage)").offset(y:25).font(.system(size: 25))
                VStack {
                    VStack {
                        Button(action: {
                            self.selfdiagnose = true
                        }) {
                            Text("수면 자가평가").font(.largeTitle).fontWeight(.bold).foregroundColor(.black)
                        }.offset(y:100)
                        
                        Button(action: {
                            self.selfdiagnose2 = true
                        }) { Text("생리학검사").font(.largeTitle).fontWeight(.bold).foregroundColor(.black)
                        }.offset(y:110)
                        if $selfdiagnose.wrappedValue {
                            ZStack {
                                Color.white
                                VStack {
                                    ScrollView {
                                        Text("수면자가진단").font(.largeTitle).fontWeight(.bold)
                                        VStack {
                                            Group{
                                                Text("앉아서 책(신문 잡지 서류 등)을 읽을 때").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $value1, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("TV볼 때").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $value2, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("공공장소(모임, 극장)등에서 가만히 앉아 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $value3, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("정차없이 1시간 동안 운행 중인 차에 승객으로 앉아 있을 때").font(.system(size: 16)).fontWeight(.semibold)
                                                Picker(selection: $value4, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("오후에 주위상황이 허락되어 쉬려고 누워 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $value5, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("앉아서 상대방과 이야기 할 때").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $value6, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("반주를 곁들이지 않은 점심식사 후 조용히 앉아 있을 때").font(.system(size: 18)).fontWeight(.semibold)
                                                Picker(selection: $value7, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("교통혼잡으로 몇분 동안 멈취선 차 안에서").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $value8, label: Text("알람음 설정")) {
                                                    Text("전혀").tag(0)
                                                    Text("조금").tag(1)
                                                    Text("상당히").tag(2)
                                                    Text("매우 많이").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                        }
                                    }
                                    Button(action: {
                                        self.average = self.value1 + self.value2 + self.value3 + self.value4 + self.value5 + self.value6 + self.value7 + self.value8
                                        self.selfdiagnose = false
                                    }, label: {
                                        Text("제출")
                                    })
                                }.padding(.vertical,15)
                            }.frame(width: 400, height: 500).cornerRadius(20).shadow(radius: 20)
                        }
                        if $selfdiagnose2.wrappedValue {
                            ZStack {
                                Color.white
                                VStack {
                                    ScrollView {
                                        Text("생리학검사").font(.largeTitle).fontWeight(.bold)
                                        VStack {
                                            Group{
                                                Text("화장실에 가려고 일어났다").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $secondvalue1, label: Text("알람음 설정")) {
                                                    Text("없음").tag(0)
                                                    Text("주 1회 미만").tag(1)
                                                    Text("주 2~3회").tag(2)
                                                    Text("주 3회 이상").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("편안하게 숨쉴 수 없었다").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $secondvalue2, label: Text("알람음 설정")) {
                                                    Text("없음").tag(0)
                                                    Text("주 1회 미만").tag(1)
                                                    Text("주 2~3회").tag(2)
                                                    Text("주 3회 이상").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("기침을 하거나 시끄럽게 코를 골았다").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $secondvalue3, label: Text("알람음 설정")) {
                                                    Text("없음").tag(0)
                                                    Text("주 1회 미만").tag(1)
                                                    Text("주 2~3회").tag(2)
                                                    Text("주 3회 이상").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("너무 춥다고 느꼈다").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $secondvalue4, label: Text("알람음 설정")) {
                                                    Text("없음").tag(0)
                                                    Text("주 1회 미만").tag(1)
                                                    Text("주 2~3회").tag(2)
                                                    Text("주 3회 이상").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("너무 덥다고 느꼈다").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $secondvalue5, label: Text("알람음 설정")) {
                                                    Text("없음").tag(0)
                                                    Text("주 1회 미만").tag(1)
                                                    Text("주 2~3회").tag(2)
                                                    Text("주 3회 이상").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("나쁜 꿈을 꾸었다").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $secondvalue6, label: Text("알람음 설정")) {
                                                    Text("없음").tag(0)
                                                    Text("주 1회 미만").tag(1)
                                                    Text("주 2~3회").tag(2)
                                                    Text("주 3회 이상").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                            Group{
                                                Text("통증이 있었다").font(.system(size: 20)).fontWeight(.semibold)
                                                Picker(selection: $secondvalue7, label: Text("알람음 설정")) {
                                                    Text("없음").tag(0)
                                                    Text("주 1회 미만").tag(1)
                                                    Text("주 2~3회").tag(2)
                                                    Text("주 3회 이상").tag(3)
                                                }.pickerStyle(SegmentedPickerStyle())
                                            }.padding(.horizontal,10)
                                        }
                                    }
                                    Button(action: {
                                        self.secondaverage = self.secondvalue1 + self.secondvalue2 + self.secondvalue3 + self.secondvalue4 + self.secondvalue5 + self.secondvalue6 + self.secondvalue7
                                        self.selfdiagnose2 = false
                                    }, label: {
                                        Text("제출")
                                    })
                                }.padding(.vertical,15)
                            }.frame(width: 400, height: 500).cornerRadius(20).shadow(radius: 20)
                        }
                    }
                }
            }.offset(y: -130)
        }
    }
}

struct Home_View_Previews: PreviewProvider {
    static var previews: some View {
        Home_view()
    }
}
