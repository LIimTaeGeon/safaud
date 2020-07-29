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
        Image("icybay").clipShape(Circle())
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
