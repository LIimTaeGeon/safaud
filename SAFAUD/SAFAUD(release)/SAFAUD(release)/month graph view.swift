//
//  month graph.swift
//  graph(v.1)
//
//  Created by gntech on 2020/01/09.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct month_graph_view: View {
    
    @State private var month = 0
    
    @State var sleepdata : [[CGFloat]] = [
        [100,175,275,155,125,155,165,195,275,255,255,150,160,140,165,120,100,200,265,195,155,165,195,275,255,255,150,160,140,165,120],
        [255,150,160,140,165,120,100,200,265,195,155,165,195,275,255,255,150,160,140,165,120,100,175,275,155,125,155,165,195,275,255],
        [120,130,130,210,175,110,160,180,155,135,125,165,135,265,215,205,190,120,170,145,180,155,115,175,125,145,155,100,105,175,155],
        [255,150,120,130,130,210,165,195,275,255,255,165,195,275,255,255,150,160,140,165,120,100,175,275,155,125,165,215,205,190,120],
        [255,150,160,140,165,120,100,200,265,195,155,165,195,140,165,120,100,200,115,175,125,100,175,275,155,125,155,165,195,275,255],
        [185,115,170,155,230,225,250,220,285,210,175,170,265,245,150,275,200,275,140,255,275,250,215,210,235,145,270,285,180,240,120],
            
        [207,292,268,126,222,249,234,230,158,172,157,186,141,261,187,140,285,256,210,255,238,187,121,203,154,202,196,140,146,200,155],
            
        [150,157,291,191,254,191,145,165,289,240,257,202,224,222,193,141,183,201,138,287,256,101,163,186,170,254,181,225,118,224,141],
        [232,299,162,213,170,104,183,260,114,184,138,206,239,262,210,104,278,104,173,112,202,286,133,253,255,171,160,298,137,113,130],
        [248,101,253,203,192,228,151,216,140,237,206,202,204,132,292,147,115,121,188,193,203,128,108,231,213,170,279,127,200,219,290],
        [180,167,284,155,237,291,237,183,147,255,179,248,299,265,206,279,139,130,277,253,201,300,294,211,115,262,150,140,230,167,200],
        [204,294,127,198,132,251,226,225,165,127,248,195,197,264,249,230,187,201,170,202,105,267,271,272,130,125,150,200,107,201,172]
    ]
    @State var deepsleepdata : [[CGFloat]] = [
        [50,75,100,55,65,40,50,100,120,120,100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55],
        [100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55,100,60,50,70,55,30,80,90,110,75],
        [50,75,100,55,65,40,50,100,120,120,100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55],
        [100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55,100,60,50,70,55,30,80,90,110,75],
        [50,75,100,55,65,40,50,100,120,120,100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55],
        [100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55,100,60,50,70,55,30,80,90,110,75],
        [50,75,100,55,65,40,50,100,120,120,100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55],
        [100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55,100,60,50,70,55,30,80,90,110,75],
        [50,75,100,55,65,40,50,100,120,120,100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55],
        [100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55,100,60,50,70,55,30,80,90,110,75],
        [50,75,100,55,65,40,50,100,120,120,100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55],
        [100,60,50,70,55,30,80,90,110,75,40,50,100,120,120,100,60,50,70,55,100,60,50,70,55,30,80,90,110,75]
    ]
    @State var sleeptime : [String] = [
        "7","6","7","8","6","7","5","9","7","6","8","9"
    ]
    var monthpic = [
        "1월", "2월","3월", "4월","5월", "6월","7월", "8월","9월", "10월","11월", "12월"
    ]
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.top)
            VStack{
                Text("\(month+1)월 수면 그래프").font(.system(size: 34)).fontWeight(.heavy).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                Text("평균 수면시간 : \(sleeptime[month])시간")
                    Picker(selection: $month, label: Text("월 선택")) {
                            ForEach(0..<monthpic.count){
                            Text(self.monthpic[$0]).tag($0)
                                    }
                    }
                ScrollView (.horizontal){
                    VStack{
                    HStack(){
                        Group{
                            BarChart(value: sleepdata[month][0],deepvalue: deepsleepdata[month][0])
                            BarChart(value: sleepdata[month][1],deepvalue: deepsleepdata[month][1])
                            BarChart(value: sleepdata[month][2],deepvalue: deepsleepdata[month][2])
                            BarChart(value: sleepdata[month][3],deepvalue: deepsleepdata[month][3])
                            BarChart(value: sleepdata[month][4],deepvalue: deepsleepdata[month][4])
                            BarChart(value: sleepdata[month][5],deepvalue: deepsleepdata[month][5])
                            BarChart(value: sleepdata[month][6],deepvalue: deepsleepdata[month][6])
                            BarChart(value: sleepdata[month][7],deepvalue: deepsleepdata[month][7])
                            BarChart(value: sleepdata[month][8],deepvalue: deepsleepdata[month][8])
                            BarChart(value: sleepdata[month][9],deepvalue: deepsleepdata[month][9])
                        }
                        Group{
                            BarChart(value: sleepdata[month][10],deepvalue: deepsleepdata[month][10])
                            BarChart(value: sleepdata[month][11],deepvalue: deepsleepdata[month][11])
                            BarChart(value: sleepdata[month][12],deepvalue: deepsleepdata[month][12])
                            BarChart(value: sleepdata[month][13],deepvalue: deepsleepdata[month][13])
                            BarChart(value: sleepdata[month][14],deepvalue: deepsleepdata[month][14])
                            BarChart(value: sleepdata[month][15],deepvalue: deepsleepdata[month][15])
                            BarChart(value: sleepdata[month][16],deepvalue: deepsleepdata[month][16])
                            BarChart(value: sleepdata[month][17],deepvalue: deepsleepdata[month][17])
                            BarChart(value: sleepdata[month][18],deepvalue: deepsleepdata[month][18])
                            BarChart(value: sleepdata[month][19],deepvalue: deepsleepdata[month][19])
                        }
                        Group{
                            BarChart(value: sleepdata[month][20],deepvalue: deepsleepdata[month][20])
                            BarChart(value: sleepdata[month][21],deepvalue: deepsleepdata[month][21])
                            BarChart(value: sleepdata[month][22],deepvalue: deepsleepdata[month][22])
                            BarChart(value: sleepdata[month][23],deepvalue: deepsleepdata[month][23])
                            BarChart(value: sleepdata[month][24],deepvalue: deepsleepdata[month][24])
                            BarChart(value: sleepdata[month][25],deepvalue: deepsleepdata[month][25])
                            BarChart(value: sleepdata[month][26],deepvalue: deepsleepdata[month][26])
                            BarChart(value: sleepdata[month][27],deepvalue: deepsleepdata[month][27])
                            BarChart(value: sleepdata[month][28],deepvalue: deepsleepdata[month][28])
                            BarChart(value: sleepdata[month][29],deepvalue: deepsleepdata[month][29])
                        }
                    }.padding(.horizontal, 10)
                        .animation(.default)
                        HStack(){
                            Spacer()
                            Text("10").font(.system(size: 10))
                            Spacer()
                            Text("20").font(.system(size: 10))
                            Spacer()
                            Text("30").font(.system(size: 10))
                        }.padding(.horizontal)
                    }
                }
                HStack{
                    RoundedRectangle(cornerRadius: 5).frame(width: 30,height: 10).foregroundColor(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                    Text(" : 수면시간").font(.system(size: 15))
                    Spacer()
                }
                HStack{
                    RoundedRectangle(cornerRadius: 5).frame(width: 30,height: 10).foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                    Text(" : 깊은 수면시간").font(.system(size: 15))
                    Spacer()
                }
            }
        }
    }
}

struct BarChart: View{
    
    var value : CGFloat
    var deepvalue : CGFloat
    var body: some View{
        VStack{
            ZStack(alignment: .bottom){
            Capsule().frame(width : 10, height: 300).foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            Capsule().frame(width : 10, height: value).foregroundColor(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
            Capsule().frame(width:10, height: deepvalue).foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
            }
        }
    }
}

struct month_graph_viewPreviews: PreviewProvider {
    static var previews: some View {
        month_graph_view()
    }
}
