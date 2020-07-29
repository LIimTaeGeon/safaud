//
//  ContentView.swift
//  line graph test
//
//  Created by gntech on 2020/07/13.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var sleepdata : [[CGFloat]] = [
        [300,205,105,4,4,105,4,205,105,105,205,105,300],
        [300,105,105,4,4,105,4,105,205,205,105,105,205],
        [205,105,105,4,105,4,4,4,105,4,205,205,300],
        [300,105,4,4,4,105,105,4,205,105,205,205,300],
        [205,4,105,105,4,105,205,205,105,4,4,105,300],
        [300,4,205,205,4,4,4,105,105,205,205,300,300],
        [300,300,4,4,105,4,105,205,105,105,205,205,300],
        [300,205,4,105,4,4,4,105,105,205,205,205,300],
        [205,205,105,105,4,105,4,205,105,4,105,105,205],
        [300,105,105,4,105,205,4,105,105,205,105,205,205],
        [300,205,105,4,4,105,4,205,105,105,205,105,300],
        [300,105,105,4,4,105,4,105,205,205,105,105,205],
        [205,105,105,4,105,4,4,4,105,4,205,205,300],
        [300,105,4,4,4,105,105,4,205,105,205,205,300],
        [205,4,105,105,4,105,205,205,105,4,4,105,300],
        [300,4,205,205,4,4,4,105,105,205,205,300,300],
        [300,300,4,4,105,4,105,205,105,105,205,205,300],
        [300,205,4,105,4,4,4,105,105,205,205,205,300],
        [205,205,105,105,4,105,4,205,105,4,105,105,205],
        [300,105,105,4,105,205,4,105,105,205,105,205,205],
        [300,205,105,4,4,105,4,205,105,105,205,105,300],
        [300,105,105,4,4,105,4,105,205,205,105,105,205],
        [205,105,105,4,105,4,4,4,105,4,205,205,300],
        [300,105,4,4,4,105,105,4,205,105,205,205,300],
        [205,4,105,105,4,105,205,205,105,4,4,105,300],
        [300,4,205,205,4,4,4,105,105,205,205,300,300],
        [300,300,4,4,105,4,105,205,105,105,205,205,300],
        [300,205,4,105,4,4,4,105,105,205,205,205,300],
        [205,205,105,105,4,105,4,205,105,4,105,105,205],
        [300,105,105,4,105,205,4,105,105,205,105,205,205],
        [300,205,105,4,4,105,4,205,105,105,205,105,300]
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
                        VStack(alignment: .trailing){ Text("깸").font(.system(size: 10)).offset(y:-140)
                            Text("REM").font(.system(size: 10)).offset(y:-59)
                            Text("얕은 잠").font(.system(size: 10)).offset(y:30)
                            Text("깊은 잠").font(.system(size: 10)).offset(y:118)
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
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][12],HYPlinevalue2:sleepdata[Int(getDate2())][11])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][11],HYPlinevalue2:sleepdata[Int(getDate2())][12])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][12],HYPlinevalue2:sleepdata[Int(getDate2())][12])
                                }
                                Group{
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][12],HYPlinevalue2:sleepdata[Int(getDate2())][1])
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
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][12],HYPlinevalue2:sleepdata[Int(getDate2())][11])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][11],HYPlinevalue2:sleepdata[Int(getDate2())][12])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][12],HYPlinevalue2:sleepdata[Int(getDate2())][12])
                                }
                                Group{
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][12],HYPlinevalue2:sleepdata[Int(getDate2())][1])
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
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][10],HYPlinevalue2:sleepdata[Int(getDate2())][7])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][7],HYPlinevalue2:sleepdata[Int(getDate2())][8])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][8],HYPlinevalue2:sleepdata[Int(getDate2())][2])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][2],HYPlinevalue2:sleepdata[Int(getDate2())][3])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][3],HYPlinevalue2:sleepdata[Int(getDate2())][4])
                                }
                                Group{
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][4],HYPlinevalue2:sleepdata[Int(getDate2())][10])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][10],HYPlinevalue2:sleepdata[Int(getDate2())][6])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][6],HYPlinevalue2:sleepdata[Int(getDate2())][7])
                                    HYPLinegraph(HYPlinevalue: sleepdata[Int(getDate2())][7],HYPlinevalue2:sleepdata[Int(getDate2())][11])
                                    HYPlastgraph(HYPlastvalue: sleepdata[Int(getDate2())][11])
                                }
                                }
                                HStack{
                                Group{
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][0],linevalue2:sleepdata[Int(getDate2())][1])
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
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][12],linevalue2:sleepdata[Int(getDate2())][11])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][11],linevalue2:sleepdata[Int(getDate2())][12])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][12],linevalue2:sleepdata[Int(getDate2())][12])
                                }
                                Group{
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][12],linevalue2:sleepdata[Int(getDate2())][1])
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
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][12],linevalue2:sleepdata[Int(getDate2())][11])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][11],linevalue2:sleepdata[Int(getDate2())][12])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][12],linevalue2:sleepdata[Int(getDate2())][12])
                                }
                                Group{
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][12],linevalue2:sleepdata[Int(getDate2())][1])
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
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][10],linevalue2:sleepdata[Int(getDate2())][7])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][7],linevalue2:sleepdata[Int(getDate2())][8])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][8],linevalue2:sleepdata[Int(getDate2())][2])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][2],linevalue2:sleepdata[Int(getDate2())][3])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][3],linevalue2:sleepdata[Int(getDate2())][4])
                                }
                                Group{
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][4],linevalue2:sleepdata[Int(getDate2())][10])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][10],linevalue2:sleepdata[Int(getDate2())][6])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][6],linevalue2:sleepdata[Int(getDate2())][7])
                                    Linegraph(linevalue: sleepdata[Int(getDate2())][7],linevalue2:sleepdata[Int(getDate2())][11])
                                    lastgraph(lastvalue: sleepdata[Int(getDate2())][11])
                                }
                                }.offset(y:-52)
                                Path { path in
                                    path.move(to: CGPoint(x: 0, y: 0))
                                    path.addLine(to: CGPoint(x: 1000, y: 0))
                                }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y:-58)
                                Path { path in
                                    path.move(to: CGPoint(x: 0, y: 0))
                                    path.addLine(to: CGPoint(x: 1000, y: 0))
                                }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y:-25)
                                Path { path in
                                    path.move(to: CGPoint(x: 0, y: 0))
                                    path.addLine(to: CGPoint(x: 1000, y: 0))
                                }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y:13)
                                Path { path in
                                    path.move(to: CGPoint(x: 0, y: 0))
                                    path.addLine(to: CGPoint(x: 1000, y: 0))
                                }.stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,style: StrokeStyle(lineWidth: 0.5, lineJoin: .round)).offset(y:52)
                                
                                HStack{
                                    Group{
                                        Text("00:00").font(.system(size: 10));
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
                    .animation(.default)
                    .offset(y:84)
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
                path.addLine(to: CGPoint(x: 15, y: 300-HYPlinevalue2+4))
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
struct Linegraph : View{
    
        var linevalue : CGFloat
        var linevalue2 : CGFloat
        
        var body: some View{
            Path { path in
                path.move(to: CGPoint(x: 7, y: 300-linevalue+4))
                path.addLine(to: CGPoint(x: 25, y: 300-linevalue2+4))
            }.stroke(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)) ,style: StrokeStyle(lineWidth: 2, lineJoin: .round))
    }
}
struct lastgraph : View{
    
    var lastvalue : CGFloat
    
    var body: some View{
        Path { path in
            path.move(to: CGPoint(x: 10, y: 300-lastvalue+4))
            path.addLine(to: CGPoint(x: 10, y: 300-lastvalue+4))
        }.stroke(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)) ,style: StrokeStyle(lineWidth: 2, lineJoin: .round))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

