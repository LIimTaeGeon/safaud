//
//  ContentView.swift
//  self diagnosis
//
//  Created by gntech on 2020/05/19.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                ScrollView{
                    Text("자가진단")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    Group{
                    Text("앉아서 책(신문 잡지 서류 등)을 읽을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Radiobuttons()
                    }
                    Group{
                    Text("TV볼 때").font(.system(size: 20)).fontWeight(.semibold)
                    Radiobuttons()
                    }
                    Group{
                    Text("공공장소(모임, 극장 등)에서 가만히 앉아 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Radiobuttons()
                    }
                    Group{
                    Text("정차 없이 1시간 동안 운행 중인 차에 승객으로 앉아 있을 때").font(.system(size: 18)).fontWeight(.semibold)
                    Radiobuttons()
                    }
                    Group{
                    Text("오후에 주위상황이 허락되어 쉬려고 누워 있을 때").font(.system(size: 20)).fontWeight(.semibold)
                    Radiobuttons()
                    }
                    Group{
                    Text("앉아서 상대방과 이야기 할 때").font(.system(size: 20)).fontWeight(.semibold)
                    Radiobuttons()
                    }
                    Group{
                    Text("반주를 곁들이지 않은 점심식사 후 조용히 앉아 있을 때").font(.system(size: 19)).fontWeight(.semibold)
                    Radiobuttons()
                    }
                    Group{
                    Text("교통 혼잡으로 몇 분 동안 멈춰선 차 안에서").font(.system(size: 20)).fontWeight(.semibold)
                    Radiobuttons()
                    }
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

struct Radiobuttons : View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 2) {
            ForEach(data,id: \.self){
                i in Button(action: {
                    
                }) {
                    HStack{
                        
                        Text(i)
                        Spacer()
                        Circle().fill(Color.black.opacity(0.5)).frame(width:20,height:20)
                        
                    }.foregroundColor(.black)
                }.padding(.top)
            }
            
        }.padding(.vertical)
            .padding(.horizontal,25)
            .background(Color.white)
        .cornerRadius(25)
    }
}

var data = ["전혀","조금","상당히","매우 많이"]
