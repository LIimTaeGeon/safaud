//
//  CircleImage.swift
//  home(v.1)
//
//  Created by gntech on 2020/01/03.
//  Copyright © 2020 gntech. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock").clipShape(Circle()).overlay(
            Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
