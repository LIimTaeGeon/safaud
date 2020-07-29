//
//  PlaySound.swift
//  SAFAUD(release)
//
//  Created by gntech on 2020/07/21.
//  Copyright © 2020 gntech. All rights reserved.
//

import Foundation
import AVFoundation

var audioplayer: AVAudioPlayer?

func playsound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioplayer?.play()
        } catch {
            print("파일이 없거나 재생할 수 없습니다.")
        }
    }
}
