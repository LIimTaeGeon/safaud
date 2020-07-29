//
//  ContentView.swift
//  test
//
//  Created by gntech on 2020/01/10.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var posttext: String = ""
    @State var sendtext: String = ""
    @State var currenttime = Date()
    let currenttimes = NSDate()
    
    var body: some View {
        VStack {
            TextField("example", text: $posttext)
            Text("\(sendtext)")
            Button("입력"){
                self.sendtext = self.posttext
                self.currenttime = self.currenttimes as Date
            }
            Text("\(currenttime)")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
