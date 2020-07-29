//
//  ContentView.swift
//  home(v.1)
//
//  Created by gntech on 2020/01/03.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            VStack {
                
                Text("SAFAUD")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                VStack {
                    VStack {
                        VStack (alignment: .leading){
                            Text("나의 수면").font(.title).fontWeight(.bold)
                            HStack {
                                Text("임태건")
                                Spacer()
                            }
                            
                        }
                    }
                }
                CircleImage()
                VStack {
                    HStack {
                        Text("평균수면시간").font(.subheadline).fontWeight(.semibold)
                        Spacer()
                        Text("6 시간").font(.subheadline)
                            .fontWeight(.semibold)
                            .padding()
                    }
                    .offset(y:10)
                    VStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("수면 자가평가")
                                .font(.largeTitle)
                                .fontWeight(.bold).foregroundColor(.black)
                        }
                        .offset(y:100)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("생리학검사").font(.largeTitle)
                            .fontWeight(.bold).foregroundColor(.black)
                        }.offset(y:110)
                    }
                }
            }
            .offset(y: -150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
