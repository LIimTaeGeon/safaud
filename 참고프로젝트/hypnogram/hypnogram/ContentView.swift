//
//  ContentView.swift
//  hypnogram
//
//  Created by gntech on 2020/07/08.
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
                    DatePicker(selection: $date, displayedComponents: .date, label: { Text("날짜 선택") })
                        
                    }
                    
                }
                
            }
            VStack{
                    VStack{
                    HStack(){
                        VStack(alignment: .trailing){ Text("깸").font(.system(size: 10)).offset(y:-135)
                            
                            Text("REM").font(.system(size: 10)).offset(y:-55)
                            
                            Text("얕은 잠").font(.system(size: 10)).offset(y:30)
                            
                            Text("깊은 잠").font(.system(size: 10)).offset(y:120)
                            
                        }
                        ScrollView (.horizontal){
                            VStack{
                                HStack{
                                Group{
                                    Bargraph(value: sleepdata[Int(getDate2())][0])
                                    Bargraph(value: sleepdata[Int(getDate2())][1])
                                    Bargraph(value: sleepdata[Int(getDate2())][2])
                                    Bargraph(value: sleepdata[Int(getDate2())][3])
                                    Bargraph(value: sleepdata[Int(getDate2())][4])
                                    }
                                Group{
                                    Bargraph(value: sleepdata[Int(getDate2())][5])
                                    Bargraph(value: sleepdata[Int(getDate2())][6])
                                    Bargraph(value: sleepdata[Int(getDate2())][7])
                                    Bargraph(value: sleepdata[Int(getDate2())][8])
                                    Bargraph(value: sleepdata[Int(getDate2())][9])
                                }
                                Group{
                                    Bargraph(value: sleepdata[Int(getDate2())][10])
                                    Bargraph(value: sleepdata[Int(getDate2())][11])
                                    Bargraph(value: sleepdata[Int(getDate2())][12])
                                    Bargraph(value: sleepdata[Int(getDate2())][11])
                                    Bargraph(value: sleepdata[Int(getDate2())][12])
                                    
                                    }
                                        Group{
                                            Bargraph(value: sleepdata[Int(getDate2())][0])
                                            Bargraph(value: sleepdata[Int(getDate2())][1])
                                            Bargraph(value: sleepdata[Int(getDate2())][2])
                                            Bargraph(value: sleepdata[Int(getDate2())][3])
                                            Bargraph(value: sleepdata[Int(getDate2())][4])
                                            }
                                        Group{
                                            Bargraph(value: sleepdata[Int(getDate2())][5])
                                            Bargraph(value: sleepdata[Int(getDate2())][6])
                                            Bargraph(value: sleepdata[Int(getDate2())][7])
                                            Bargraph(value: sleepdata[Int(getDate2())][8])
                                            Bargraph(value: sleepdata[Int(getDate2())][9])
                                        }
                                        Group{
                                            Bargraph(value: sleepdata[Int(getDate2())][10])
                                            Bargraph(value: sleepdata[Int(getDate2())][11])
                                            Bargraph(value: sleepdata[Int(getDate2())][12])
                                            Bargraph(value: sleepdata[Int(getDate2())][11])
                                            Bargraph(value: sleepdata[Int(getDate2())][12])
                                            
                                            }
                                        Group{
                                            Bargraph(value: sleepdata[Int(getDate2())][0])
                                            Bargraph(value: sleepdata[Int(getDate2())][1])
                                            Bargraph(value: sleepdata[Int(getDate2())][2])
                                            Bargraph(value: sleepdata[Int(getDate2())][3])
                                            Bargraph(value: sleepdata[Int(getDate2())][4])
                                            }
                                        Group{
                                            Bargraph(value: sleepdata[Int(getDate2())][5])
                                            Bargraph(value: sleepdata[Int(getDate2())][6])
                                            Bargraph(value: sleepdata[Int(getDate2())][7])
                                            Bargraph(value: sleepdata[Int(getDate2())][8])
                                            Bargraph(value: sleepdata[Int(getDate2())][9])
                                        }
                                    }
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
                            
                        }
                    }
                    }.padding(.horizontal,10)
                    .animation(.default)
                        .offset(y:80)
                }
        
            }
        }
}
struct Bargraph: View{
    
    var value : CGFloat
    var body: some View{
        VStack{
            ZStack(alignment: .bottom){
            Rectangle().frame(width : 10, height: 300).foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            Rectangle().frame(width : 10, height: value).foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
