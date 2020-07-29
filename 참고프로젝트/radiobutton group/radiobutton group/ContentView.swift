//
//  ContentView.swift
//  self diagnosis
//
//  Created by gntech on 2020/05/19.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var average = 0
    @State var value1 = 1
    @State var value2 = 1
    @State var value3 = 1
    @State var value4 = 1
    @State var value5 = 1
    @State var value6 = 1
    @State var value7 = 1
    @State var value8 = 1
    var body: some View {
        ScrollView {
            Text("자가진단")
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack {
                Group{
                    Text("앉아서 책(신문 잡지 서류 등)을 읽을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Picker(selection: $value1, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                Group{
                    Text("TV볼 때").font(.system(size: 20)).fontWeight(.semibold)
                    Picker(selection: $value2, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                Group{
                    Text("공공장소(모임, 극장)등에서 가만히 앉아 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Picker(selection: $value3, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                Group{
                    Text("정차없이 1시간 동안 운행 중인 차에 승객으로 앉아 있을 때").font(.system(size: 17)).fontWeight(.semibold)
                    Picker(selection: $value4, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                Group{
                    Text("오후에 주위상황이 허락되어 쉬려고 누워 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Picker(selection: $value5, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                Group{
                    Text("앉아서 상대방과 이야기 할 때").font(.system(size: 20)).fontWeight(.semibold)
                    Picker(selection: $value6, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                Group{
                    Text("반주를 곁들이지 않은 점심식사 후 조용히 앉아 있을 때").font(.system(size: 19)).fontWeight(.semibold)
                    Picker(selection: $value7, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                Group{
                    Text("교통혼잡으로 몇분 동안 멈취선 차 안에서").font(.system(size: 20)).fontWeight(.semibold)
                    Picker(selection: $value8, label: Text("알람음 설정")) {
                        Text("전혀").tag(1)
                        Text("조금").tag(2)
                        Text("상당히").tag(3)
                        Text("매우 많이").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                }.padding(.horizontal,10)
                VStack {
                    Button(action: {
                        self.average = self.value1 + self.value2 + self.value3 + self.value4 + self.value5 + self.value6 + self.value7 + self.value8
                    }) {
                                Text("진단").font(.system(size: 25))
                    }.offset(y:25)
                    Text("총점"+"\(average)").offset(y:25).font(.system(size: 25))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
