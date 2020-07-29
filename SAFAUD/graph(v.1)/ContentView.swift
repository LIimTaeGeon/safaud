//
//  ContentView.swift
//  graph(v.1)
//
//  Created by gntech on 2020/01/09.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Home_view()
                .font(.headline)
                .tabItem {
                    VStack {
                        Image("home")
                        Text("home")
                    }
                }
                .tag(0)
            graph_view()
                .font(.title)
                .tabItem {
                    VStack {
                        Image("graph")
                        Text("day graph")
                    }
                }
                .tag(1)
            month_graph_view()
                .font(.title)
                .tabItem{
                    VStack{
                        Image("report")
                        Text("month graph")
                    }
                }
                .tag(2)
            Alarm_view()
                .font(.title)
                .tabItem{
                    VStack{
                        Image("alarm")
                        Text("Alarm")
                    }
                }
                .tag(3)
            Setting_view()
                .font(.title)
                .tabItem{
                    VStack{
                        Image("setting")
                        Text("Setting")
                    }
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
