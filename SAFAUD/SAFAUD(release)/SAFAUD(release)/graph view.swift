//
//  Home view.swift
//  graph(v.1)
//
//  Created by gntech on 2020/01/09.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct graph_view: View {
    
        @State var sleepdata : [[CGFloat]] = [
            [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
            [300,205,105,4,4,105,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,105,300,205,105,4,4,105,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,300],
            [300,105,105,4,4,105,4,105,205,205,105,105,205,300,105,105,4,4,105,4,105,205,205,105,105,300,105,105,4,4,105,4,105,205,205,105,105,205,300,105,105,4,4,105,4,105,205,205,105,300],
            [205,105,105,4,105,4,4,4,105,4,205,205,300,205,105,105,4,105,4,4,4,105,4,205,205,205,105,105,4,105,4,4,4,105,4,205,205,300,205,105,105,4,105,4,4,4,105,4,205,300],
            [300,105,4,4,4,105,105,4,205,105,205,205,300,300,105,4,4,4,105,105,4,205,105,205,205,300,105,4,4,4,105,105,4,205,105,205,205,300,300,105,4,4,4,105,105,4,205,105,205,300],
            [205,4,105,105,4,105,205,205,105,4,4,105,300,205,4,105,105,4,105,205,205,105,4,4,105,205,4,105,105,4,105,205,205,105,4,4,105,300,205,4,105,105,4,105,205,205,105,4,4,300],
            [300,4,205,205,4,4,4,105,105,205,205,300,300,300,4,205,205,4,4,4,105,105,205,205,300,300,4,205,205,4,4,4,105,105,205,205,300,300,300,4,205,205,4,4,4,105,105,205,205,300],
            [300,300,4,4,105,4,105,205,105,105,205,205,300,300,300,4,4,105,4,105,205,105,105,205,205,300,300,4,4,105,4,105,205,105,105,205,205,300,300,300,4,4,105,4,105,205,105,105,205,300],
            [300,205,4,105,4,4,4,105,105,205,205,205,300,300,205,4,105,4,4,4,105,105,205,205,205,300,205,4,105,4,4,4,105,105,205,205,205,300,300,205,4,105,4,4,4,105,105,205,205,300],
            [205,205,105,105,4,105,4,205,105,4,105,105,205,205,205,105,105,4,105,4,205,105,4,105,105,205,205,105,105,4,105,4,205,105,4,105,105,205,205,205,105,105,4,105,4,205,105,4,105,300],
            [300,105,105,4,105,205,4,105,105,205,105,205,205,300,105,105,4,105,205,4,105,105,205,105,205,300,105,105,4,105,205,4,105,105,205,105,205,205,300,105,105,4,105,205,4,105,105,205,105,300],
            [300,205,105,4,4,105,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,105,300,205,105,4,4,105,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,300],
            [300,105,105,4,4,105,4,105,205,205,105,105,205,300,105,105,4,4,105,4,105,205,205,105,105,300,105,105,4,4,105,4,105,205,205,105,105,205,300,105,105,4,4,105,4,105,205,205,105,300],
            [205,105,105,4,105,4,4,4,105,4,205,205,300,205,105,105,4,105,4,4,4,105,4,205,205,205,105,105,4,105,4,4,4,105,4,205,205,300,205,105,105,4,105,4,4,4,105,4,205,300],
            [300,105,4,4,4,105,105,4,205,105,205,205,300,300,105,4,4,4,105,105,4,205,105,205,205,300,105,4,4,4,105,105,4,205,105,205,205,300,300,105,4,4,4,105,105,4,205,105,205,300],
            [205,4,105,105,4,105,205,205,105,4,4,105,300,205,4,105,105,4,105,205,205,105,4,4,105,205,4,105,105,4,105,205,205,105,4,4,105,300,205,4,105,105,4,105,205,205,105,4,4,300],
            [300,4,205,205,4,4,4,105,105,205,205,300,300,300,4,205,205,4,4,4,105,105,205,205,300,300,4,205,205,4,4,4,105,105,205,205,300,300,300,4,205,205,4,4,4,105,105,205,205,300],
            [300,300,4,4,105,4,105,205,105,105,205,205,300,300,300,4,4,105,4,105,205,105,105,205,205,300,300,4,4,105,4,105,205,105,105,205,205,300,300,300,4,4,105,4,105,205,105,105,205,300],
            [300,205,4,105,4,4,4,105,105,205,205,205,300,300,205,4,105,4,4,4,105,105,205,205,205,300,205,4,105,4,4,4,105,105,205,205,205,300,300,205,4,105,4,4,4,105,105,205,205,300],
            [205,205,105,105,4,105,4,205,105,4,105,105,205,205,205,105,105,4,105,4,205,105,4,105,105,205,205,105,105,4,105,4,205,105,4,105,105,205,205,205,105,105,4,105,4,205,105,4,105,300],
            [300,105,105,4,105,205,4,105,105,205,105,205,205,300,105,105,4,105,205,4,105,105,205,105,205,300,105,105,4,105,205,4,105,105,205,105,205,205,300,105,105,4,105,205,4,105,105,205,105,300],
            [300,205,105,4,4,105,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,105,300,205,105,4,4,105,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,300],
            [300,105,105,4,4,105,4,105,205,205,105,105,205,300,105,105,4,4,105,4,105,205,205,105,105,300,105,105,4,4,105,4,105,205,205,105,105,205,300,105,105,4,4,105,4,105,205,205,105,300],
            [205,105,105,4,105,4,4,4,105,4,205,205,300,205,105,105,4,105,4,4,4,105,4,205,205,205,105,105,4,105,4,4,4,105,4,205,205,300,205,105,105,4,105,4,4,4,105,4,205,300],
            [300,105,4,4,4,105,105,4,205,105,205,205,300,300,105,4,4,4,105,105,4,205,105,205,205,300,105,4,4,4,105,105,4,205,105,205,205,300,300,105,4,4,4,105,105,4,205,105,205,300],
            [205,4,105,105,4,105,205,205,105,4,4,105,300,205,4,105,105,4,105,205,205,105,4,4,105,205,4,105,105,4,105,205,205,105,4,4,105,300,205,4,105,105,4,105,205,205,105,4,4,300],
            [300,4,205,205,4,4,4,105,105,205,205,300,300,300,4,205,205,4,4,4,105,105,205,205,300,300,4,205,205,4,4,4,105,105,205,205,300,300,300,4,205,205,4,4,4,105,105,205,205,300],
            [300,300,4,4,105,4,105,205,105,105,205,205,300,300,300,4,4,105,4,105,205,105,105,205,205,300,300,4,4,105,4,105,205,105,105,205,205,300,300,300,4,4,105,4,105,205,105,105,205,300],
            [300,205,4,105,4,4,4,105,105,205,205,205,300,300,205,4,105,4,4,4,105,105,205,205,205,300,205,4,105,4,4,4,105,105,205,205,205,300,300,205,4,105,4,4,4,105,105,205,205,300],
            [205,205,105,105,4,105,4,205,105,4,105,105,205,205,205,105,105,4,105,4,205,105,4,105,105,205,205,105,105,4,105,4,205,105,4,105,105,205,205,205,105,105,4,105,4,205,105,4,105,300],
            [300,105,105,4,105,205,4,105,105,205,105,205,205,300,105,105,4,105,205,4,105,105,205,105,205,300,105,105,4,105,205,4,105,105,205,105,205,205,300,105,105,4,105,205,4,105,105,205,105,300],
            [300,205,105,4,4,4,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,105,300,205,105,4,4,105,4,205,105,105,205,105,300,300,205,105,4,4,105,4,205,105,105,205,300]
            
            ]
            func getDate()->String{
             let datetextFormatter = DateFormatter()
                datetextFormatter.locale = Locale(identifier: "ko_KR")
                datetextFormatter.dateFormat = "YYYY년 MM월 dd일"
             let stringdate = datetextFormatter.string(from: date)
             return stringdate
            }
            func getDate2()->CGFloat{
                let datetextFormatter2 = DateFormatter()
                datetextFormatter2.locale = Locale(identifier:"ko_KR")
                datetextFormatter2.dateFormat = "dd"
                let stringdate2 = datetextFormatter2.string(from: date)
                let myFloat = (stringdate2 as NSString).floatValue
                return CGFloat(myFloat)
            }
            
            @State var date = Date()
            
            var body: some View {
                ZStack{
                    Form {
                        Section (header: Text("\(getDate()) 그래프")){
                            VStack {
                                DatePicker("날짜 선택",selection: $date, displayedComponents: .date).environment(\.locale, Locale.init(identifier: "ko"))
                            }
                        }
                    }
                    VStack{
                            VStack{
                            HStack(){
                                VStack(alignment: .trailing){ Text("깸").font(.system(size: 10)).offset(y:-139)
                                    Text("REM").font(.system(size: 10)).offset(y:-57)
                                    Text("얕은 잠").font(.system(size: 10)).offset(y:32)
                                    Text("깊은 잠").font(.system(size: 10)).offset(y:120)
                                }
                                ScrollView (.horizontal){
                                    VStack{
                                        HStack{
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][0],HYPlinevalue2:sleepdata[Int(getDate2())][1])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][1],HYPlinevalue2:sleepdata[Int(getDate2())][2])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][2],HYPlinevalue2:sleepdata[Int(getDate2())][3])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][3],HYPlinevalue2:sleepdata[Int(getDate2())][4])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][4],HYPlinevalue2:sleepdata[Int(getDate2())][5])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][5],HYPlinevalue2:sleepdata[Int(getDate2())][6])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][6],HYPlinevalue2:sleepdata[Int(getDate2())][7])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][7],HYPlinevalue2:sleepdata[Int(getDate2())][8])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][8],HYPlinevalue2:sleepdata[Int(getDate2())][9])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][9],HYPlinevalue2:sleepdata[Int(getDate2())][10])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][10],HYPlinevalue2:sleepdata[Int(getDate2())][11])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][11],HYPlinevalue2:sleepdata[Int(getDate2())][12])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][12],HYPlinevalue2:sleepdata[Int(getDate2())][13])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][13],HYPlinevalue2:sleepdata[Int(getDate2())][14])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][14],HYPlinevalue2:sleepdata[Int(getDate2())][15])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][15],HYPlinevalue2:sleepdata[Int(getDate2())][16])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][16],HYPlinevalue2:sleepdata[Int(getDate2())][17])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][17],HYPlinevalue2:sleepdata[Int(getDate2())][18])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][18],HYPlinevalue2:sleepdata[Int(getDate2())][19])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][19],HYPlinevalue2:sleepdata[Int(getDate2())][20])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][20],HYPlinevalue2:sleepdata[Int(getDate2())][21])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][21],HYPlinevalue2:sleepdata[Int(getDate2())][22])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][22],HYPlinevalue2:sleepdata[Int(getDate2())][23])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][23],HYPlinevalue2:sleepdata[Int(getDate2())][24])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][24],HYPlinevalue2:sleepdata[Int(getDate2())][25])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][25],HYPlinevalue2:sleepdata[Int(getDate2())][26])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][26],HYPlinevalue2:sleepdata[Int(getDate2())][27])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][27],HYPlinevalue2:sleepdata[Int(getDate2())][28])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][28],HYPlinevalue2:sleepdata[Int(getDate2())][29])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][29],HYPlinevalue2:sleepdata[Int(getDate2())][30])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][30],HYPlinevalue2:sleepdata[Int(getDate2())][31])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][31],HYPlinevalue2:sleepdata[Int(getDate2())][32])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][32],HYPlinevalue2:sleepdata[Int(getDate2())][33])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][33],HYPlinevalue2:sleepdata[Int(getDate2())][34])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][34],HYPlinevalue2:sleepdata[Int(getDate2())][35])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][35],HYPlinevalue2:sleepdata[Int(getDate2())][36])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][36],HYPlinevalue2:sleepdata[Int(getDate2())][37])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][37],HYPlinevalue2:sleepdata[Int(getDate2())][38])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][38],HYPlinevalue2:sleepdata[Int(getDate2())][39])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][39],HYPlinevalue2:sleepdata[Int(getDate2())][40])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][40],HYPlinevalue2:sleepdata[Int(getDate2())][41])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][41],HYPlinevalue2:sleepdata[Int(getDate2())][42])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][42],HYPlinevalue2:sleepdata[Int(getDate2())][43])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][43],HYPlinevalue2:sleepdata[Int(getDate2())][44])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][44],HYPlinevalue2:sleepdata[Int(getDate2())][45])
                                        }
                                        Group{
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][45],HYPlinevalue2:sleepdata[Int(getDate2())][46])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][46],HYPlinevalue2:sleepdata[Int(getDate2())][47])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][47],HYPlinevalue2:sleepdata[Int(getDate2())][48])
                                            HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][48],HYPlinevalue2:sleepdata[Int(getDate2())][49])
                                            HYPlastgraph(HYPlastvalue: sleepdata[Int(getDate2())][49])
                                        }
                                        }
                                        HStack{
                                        Group{ FirstLinegraph(firstvalue:sleepdata[Int(getDate2())][0],linevalue: sleepdata[Int(getDate2())][0],linevalue2:sleepdata[Int(getDate2())][1])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][1],linevalue2:sleepdata[Int(getDate2())][2])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][2],linevalue2:sleepdata[Int(getDate2())][3])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][3],linevalue2:sleepdata[Int(getDate2())][4])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][4],linevalue2:sleepdata[Int(getDate2())][5])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][5],linevalue2:sleepdata[Int(getDate2())][6])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][6],linevalue2:sleepdata[Int(getDate2())][7])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][7],linevalue2:sleepdata[Int(getDate2())][8])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][8],linevalue2:sleepdata[Int(getDate2())][9])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][9],linevalue2:sleepdata[Int(getDate2())][10])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][10],linevalue2:sleepdata[Int(getDate2())][11])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][11],linevalue2:sleepdata[Int(getDate2())][12])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][12],linevalue2:sleepdata[Int(getDate2())][13])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][13],linevalue2:sleepdata[Int(getDate2())][14])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][14],linevalue2:sleepdata[Int(getDate2())][15])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][15],linevalue2:sleepdata[Int(getDate2())][16])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][16],linevalue2:sleepdata[Int(getDate2())][17])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][17],linevalue2:sleepdata[Int(getDate2())][18])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][18],linevalue2:sleepdata[Int(getDate2())][19])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][19],linevalue2:sleepdata[Int(getDate2())][20])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][20],linevalue2:sleepdata[Int(getDate2())][21])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][21],linevalue2:sleepdata[Int(getDate2())][22])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][22],linevalue2:sleepdata[Int(getDate2())][23])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][23],linevalue2:sleepdata[Int(getDate2())][24])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][24],linevalue2:sleepdata[Int(getDate2())][25])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][25],linevalue2:sleepdata[Int(getDate2())][26])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][26],linevalue2:sleepdata[Int(getDate2())][27])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][27],linevalue2:sleepdata[Int(getDate2())][28])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][28],linevalue2:sleepdata[Int(getDate2())][29])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][29],linevalue2:sleepdata[Int(getDate2())][30])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][30],linevalue2:sleepdata[Int(getDate2())][31])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][31],linevalue2:sleepdata[Int(getDate2())][32])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][32],linevalue2:sleepdata[Int(getDate2())][33])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][33],linevalue2:sleepdata[Int(getDate2())][34])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][34],linevalue2:sleepdata[Int(getDate2())][35])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][35],linevalue2:sleepdata[Int(getDate2())][36])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][36],linevalue2:sleepdata[Int(getDate2())][37])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][37],linevalue2:sleepdata[Int(getDate2())][38])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][38],linevalue2:sleepdata[Int(getDate2())][39])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][39],linevalue2:sleepdata[Int(getDate2())][40])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][40],linevalue2:sleepdata[Int(getDate2())][41])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][41],linevalue2:sleepdata[Int(getDate2())][42])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][42],linevalue2:sleepdata[Int(getDate2())][43])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][43],linevalue2:sleepdata[Int(getDate2())][44])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][44],linevalue2:sleepdata[Int(getDate2())][45])
                                        }
                                        Group{
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][45],linevalue2:sleepdata[Int(getDate2())][46])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][46],linevalue2:sleepdata[Int(getDate2())][47])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][47],linevalue2:sleepdata[Int(getDate2())][48])
                                            Linegraph(linevalue: sleepdata[Int(getDate2())][48],linevalue2:sleepdata[Int(getDate2())][49])
                                            Lastgraph(lastvalue: sleepdata[Int(getDate2())][49])
                                        }
                                        }.offset(y:-52)
                                        Path { path in
                                            path.move(to: CGPoint(x: 0, y: 0))
                                            path.addLine(to: CGPoint(x: 1000, y: 0))
                                        }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y:-100)
                                        Path { path in
                                            path.move(to: CGPoint(x: 0, y: 0))
                                            path.addLine(to: CGPoint(x: 1000, y: 0))
                                        }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y:-56)
                                        Path { path in
                                            path.move(to: CGPoint(x: 0, y: 0))
                                            path.addLine(to: CGPoint(x: 1000, y: 0))
                                        }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y: -8)
                                        Path { path in
                                            path.move(to: CGPoint(x: 0, y: 0))
                                            path.addLine(to: CGPoint(x: 1000, y: 0))
                                        }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y:42)
                                        
                                        HStack{
                                            Group{ Text("00:00").font(.system(size: 10));
                                                Spacer()
                                                Text("01:00").font(.system(size: 10));
                                                Spacer()
                                                Text("02:00").font(.system(size: 10));
                                                Spacer()
                                                Text("03:00").font(.system(size: 10));
                                            }
                                            Group{
                                                Spacer()
                                                Text("04:00").font(.system(size: 10));
                                                Spacer()
                                                Text("05:00").font(.system(size: 10));
                                                Spacer()
                                                Text("06:00").font(.system(size: 10));
                                                Spacer()
                                                Text("07:00").font(.system(size: 10));
                                            }
                                        }
                                    }
                                }.frame(width: 350,height: 320)
                            }
                            }.padding(.horizontal,10)
                            .animation(.easeInOut)
                            .offset(y:200)
                        }
                    }
                }
            }
        struct HYPLinegraph : View{
            
                var HYPlinevalue : CGFloat
                var HYPlinevalue2 : CGFloat
                
                var body: some View{
                    Path { path in
                        path.move(to: CGPoint(x: -4, y: 300-HYPlinevalue+4))
                        path.addLine(to: CGPoint(x: 15, y: 300-HYPlinevalue+4))
                        path.addLine(to: CGPoint(x:15,y:300-HYPlinevalue2+4))
                    }.stroke(Color(#colorLiteral(red: 0.195589751, green: 0.3402995169, blue: 0.1023360714, alpha: 1)) ,style: StrokeStyle(lineWidth: 2, lineJoin: .round))
            }
        }
        struct HYPlastgraph : View{
            
            var HYPlastvalue : CGFloat
            
            var body: some View{
                Path { path in
                    path.move(to: CGPoint(x: -4, y: 300-HYPlastvalue+4))
                    path.addLine(to: CGPoint(x: 15, y: 300-HYPlastvalue+4))
                }.stroke(Color(#colorLiteral(red: 0.195589751, green: 0.3402995169, blue: 0.1023360714, alpha: 1)) ,style: StrokeStyle(lineWidth: 2, lineJoin: .round))
            }
        }
        struct FirstLinegraph : View{
            var firstvalue : CGFloat
            var linevalue : CGFloat
            var linevalue2 : CGFloat
            var body: some View{
                Path { path in
                    path.move(to: CGPoint(x: -4, y: 300-firstvalue+4))
                    path.addLine(to: CGPoint(x: 7, y: 300-linevalue+4))
                    func smooth() {
                        let NextPoint = CGPoint(x:25,y:300-linevalue2+4)
                        let MidPoint = CGPoint(x:15,y:((300-linevalue+4)+300-linevalue2+4)/2)
                        let Diff = ((300-linevalue2+4)-MidPoint.y)/2
                        let CtlPoint1 = CGPoint(x:(6+MidPoint.x)/2,y:(((300-linevalue+4)+MidPoint.y)/2)-Diff)
                        let CtlPoint2 = CGPoint(x:(24+MidPoint.x)/2,y:(((300-linevalue2+4)+MidPoint.y)/2)+Diff)
                        path.addCurve(to: NextPoint, control1: CtlPoint1, control2: CtlPoint2)
                    }
                    smooth()
                }.stroke(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) ,style: StrokeStyle(lineWidth: 2, lineJoin: .round))
            }
        }
        struct Linegraph : View{
            
                var linevalue : CGFloat
                var linevalue2 : CGFloat
                
                var body: some View{
                    Path { path in
                        path.move(to: CGPoint(x: 7, y: 300-linevalue+4))
                        func smooth() {
                            let NextPoint = CGPoint(x:25,y:300-linevalue2+4)
                            let MidPoint = CGPoint(x:15,y:((300-linevalue+4)+300-linevalue2+4)/2)
                            let Diff = ((300-linevalue2+4)-MidPoint.y)/2
                            let CtlPoint1 = CGPoint(x:(6+MidPoint.x)/2,y:(((300-linevalue+4)+MidPoint.y)/2)-Diff)
                            let CtlPoint2 = CGPoint(x:(24+MidPoint.x)/2,y:(((300-linevalue2+4)+MidPoint.y)/2)+Diff)
                            path.addCurve(to: NextPoint, control1: CtlPoint1, control2: CtlPoint2)
                        }
                        smooth()
                    }.stroke(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) ,style: StrokeStyle(lineWidth: 2, lineJoin: .round))
            }
        }
        struct Lastgraph : View{
            
            var lastvalue : CGFloat
            
            var body: some View{
                Path { path in
                    path.move(to: CGPoint(x: 7, y: 300-lastvalue+4))
                    path.addLine(to: CGPoint(x: 15, y: 300-lastvalue+4))
                }.stroke(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) ,style: StrokeStyle(lineWidth: 2, lineJoin: .round))
            }
        }
struct graph_view_Previews: PreviewProvider {
    static var previews: some View {
        graph_view()
    }
}
