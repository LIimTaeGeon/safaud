//
//  Alarm code.swift
//  graph(v.1)
//
//  Created by gntech on 2020/01/10.
//  Copyright © 2020 gntech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //알람끄기
    var alarm: Bool = true
    
    var count = 0
    
    //updateTime함수 할당
    let timeSelector: Selector = #selector(ViewController.updateTime)
    
    //현재시간, 선택된 시간
    @IBOutlet weak var curentTime: UILabel!
    @IBOutlet weak var selectTime: UILabel!
    
    
    //화면이 호출될때 실행
    override func viewDidLoad() {
        super.viewDidLoad()
        //1초에 한번씩 timeSelector 함수를 호출
       Timer.scheduledTimer(timeInterval: 1, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }


    //데이터 피커가 선택되었을때 실행
    @IBAction func datePicker(_ sender: UIDatePicker) {
        //데이터피커뷰 할당
        let datePickerView = sender
        //포멧설정
        let selFormatter = DateFormatter()
        selFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        
        //라벨에 할당
        selectTime.text = selFormatter.string(from: datePickerView.date)
        //알람켜기
        alarm = true
    }
    
    //1초마다 호출되는 현재시간 부분
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        curentTime.text = formatter.string(from: date as Date)
        
        if curentTime.text == selectTime.text{
            
            if alarm {
                callAlert()
            }
        }
    }
    
    func callAlert(){

        let alert = UIAlertController(title:"알림",message:"시간됐어요", preferredStyle:UIAlertController.Style.alert)
        let action = UIAlertAction(title:"끄기",style:UIAlertAction.Style.default, handler:{
            //알람끄기
            ACTION in self.alarm = false
            //self.alarm = false
        })
        alert.addAction(action)
        present(alert,animated: true, completion: nil)
        
    }
}

