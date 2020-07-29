//
//  Alarm result.swift
//  graph(v.1)
//
//  Created by gntech on 2020/02/10.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct Alarm_result: View {
    
    func getDate()->String{
     let time = Date()
     let timeFormatter = DateFormatter()
        timeFormatter.locale = Locale(identifier: "ko_KR")
     timeFormatter.dateFormat = "HH:mm"
     let stringDate = timeFormatter.string(from: time)
     return stringDate
    }
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(Edge.Set.all)
            Text("알람")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .offset(y:-135)
            Text("설정한 시간입니다.")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
                .offset(y: -35)
            Text(getDate()).font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            Button(action: {}) {
                Text("확인").font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                    .offset(y:350)
            }
        }
        
    }
}

struct Alarm_result_Previews: PreviewProvider {
    static var previews: some View {
        Alarm_result()
    }
}
