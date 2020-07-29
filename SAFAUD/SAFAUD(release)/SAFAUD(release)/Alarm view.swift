//
//  Alarm view.swift
//  graph(v.1)
//
//  Created by gntech on 2020/01/09.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct Alarm_view: View {
    
    func getDate()->String{
     let time = Date()
     let timeFormatter = DateFormatter()
        timeFormatter.locale = Locale(identifier: "ko_KR")
     timeFormatter.dateFormat = "HH:mm"
     let stringDate = timeFormatter.string(from: time)
     return stringDate
    }
    
    func getTime()->String{
     let timetextFormatter = DateFormatter()
        timetextFormatter.locale = Locale(identifier: "ko_KR")
        timetextFormatter.dateFormat = "HH:mm"
     let stringDate2 = timetextFormatter.string(from: selecttimes)
     return stringDate2
    }

    @State var selecttimes = Date()
    @State var sound = 1
    @State var currenttimes = Date()
    @State var currentDate = Date()

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            NavigationView{
                Form {
                    Section {
                        DatePicker(selection: $selecttimes,displayedComponents: .hourAndMinute, label:{Text("시간설정")})
                        Picker(selection: $sound, label: Text("알람음 설정")) {
                            Text("1").tag(1)
                            /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                            Text("3").tag(3)
                        }
                    }
                }.navigationBarTitle(Text("알람설정"))
            }
            if(getTime() == getDate())
            {
                if(sound == 1)
                {
                    Text("설정한 시간입니다! 111")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                }
                else if(sound == 2)
                {
                    Text("설정한 시간입니다! 222")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                }
                else if(sound == 3)
                {
                    Text("설정한 시간입니다! 333")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                }
                
            } else {
                
            }
        }
    }
}
    

struct Alarm_view_Previews: PreviewProvider {
    static var previews: some View {
        Alarm_view()
    }
}
