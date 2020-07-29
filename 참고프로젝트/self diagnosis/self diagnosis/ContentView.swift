//
//  ContentView.swift
//  self diagnosis
//
//  Created by gntech on 2020/05/19.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var value1: Double = 0
    @State private var value2: Double = 0
    @State private var value3: Double = 0
    @State private var value4: Double = 0
    @State private var value5: Double = 0
    @State private var value6: Double = 0
    @State private var value7: Double = 0
    @State private var value8: Double = 0
    @State private var average: Double = 0
    var body: some View {
        ScrollView {
            Text("자가진단")
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack {
                Group{
                    Text("앉아서 책(신문 잡지 서류 등)을 읽을 때").font(.system(size: 20)).fontWeight(.semibold)
                Slider(value: $value1,in: 0...3, step: 1).padding(.horizontal,30)
                HStack {
                    Text("전혀").offset(x:17)
                    Spacer()
                    Text("조금").offset(x:22)
                    Spacer()
                    Text("상당히").offset(x:20)
                    Spacer()
                    Text("매우 많이")
                }.padding(.horizontal,10)
                }.offset(y:15)
                Group{
                    Text("TV볼 때").font(.system(size: 20)).fontWeight(.semibold)
                    Slider(value: $value2,in: 0...3, step: 1).padding(.horizontal,30)
                    HStack {
                        Text("전혀").offset(x:17)
                        Spacer()
                        Text("조금").offset(x:22)
                        Spacer()
                        Text("상당히").offset(x:20)
                        Spacer()
                        Text("매우 많이")
                    }.padding(.horizontal,10)
                }.offset(y:15)
                Group{
                Text("공공장소(모임, 극장 등)에서 가만히 앉아 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Slider(value: $value3,in: 0...3, step: 1).padding(.horizontal,30)
                    HStack {
                        Text("전혀").offset(x:17)
                        Spacer()
                        Text("조금").offset(x:22)
                        Spacer()
                        Text("상당히").offset(x:20)
                        Spacer()
                        Text("매우 많이")
                    }.padding(.horizontal,10)
                }.offset(y:15)
                Group{
                    Text("정차 없이 1시간 동안 운행 중인 차에 승객으로 앉아 있을 때").font(.system(size: 18)).fontWeight(.semibold)
                    Slider(value: $value4,in: 0...3, step: 1).padding(.horizontal,30)
                    HStack {
                        Text("전혀").offset(x:17)
                        Spacer()
                        Text("조금").offset(x:22)
                        Spacer()
                        Text("상당히").offset(x:20)
                        Spacer()
                        Text("매우 많이")
                    }.padding(.horizontal,10)
                }.offset(y:15)
                Group{
                Text("오후에 주위상황이 허락되어 쉬려고 누워 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Slider(value: $value5,in: 0...3, step: 1).padding(.horizontal,30)
                    HStack {
                        Text("전혀").offset(x:17)
                        Spacer()
                        Text("조금").offset(x:22)
                        Spacer()
                        Text("상당히").offset(x:20)
                        Spacer()
                        Text("매우 많이")
                    }.padding(.horizontal,10)
                }.offset(y:15)
                Group{
                Text("앉아서 상대방과 이야기 할 때").font(.system(size: 20)).fontWeight(.semibold)
                    Slider(value: $value6,in: 0...3, step: 1).padding(.horizontal,30)
                    HStack {
                        Text("전혀").offset(x:17)
                        Spacer()
                        Text("조금").offset(x:22)
                        Spacer()
                        Text("상당히").offset(x:20)
                        Spacer()
                        Text("매우 많이")
                    }.padding(.horizontal,10)
                }.offset(y:15)
                Group{
                Text("반주를 곁들이지 않은 점심식사 후 조용히 앉아 있을 때").font(.system(size: 19)).fontWeight(.semibold)
                    Slider(value: $value7,in: 0...3, step: 1).padding(.horizontal,30)
                    HStack {
                        Text("전혀").offset(x:17)
                        Spacer()
                        Text("조금").offset(x:22)
                        Spacer()
                        Text("상당히").offset(x:20)
                        Spacer()
                        Text("매우 많이")
                    }.padding(.horizontal,10)
                }.offset(y:15)
                Group{
                Text("교통 혼잡으로 몇 분 동안 멈춰선 차 안에서").font(.system(size: 20)).fontWeight(.semibold)
                    Slider(value: $value8,in: 0...3, step: 1).padding(.horizontal,30)
                    HStack {
                        Text("전혀").offset(x:17)
                        Spacer()
                        Text("조금").offset(x:22)
                        Spacer()
                        Text("상당히").offset(x:20)
                        Spacer()
                        Text("매우 많이")
                    }.padding(.horizontal,10)
                }.offset(y:15)
                VStack {
                    Button(action: {
                            self.average = self.value1 + self.value2 + self.value3 + self.value4 + self.value5 + self.value6 + self.value7 + self.value8}) {
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
