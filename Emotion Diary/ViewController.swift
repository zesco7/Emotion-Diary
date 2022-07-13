//
//  ViewController.swift
//  Emotion Diary
//
//  Created by Mac Pro 15 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emotion1: UIButton!
    @IBOutlet weak var emotion2: UIButton!
    @IBOutlet weak var emotion3: UIButton!
    @IBOutlet weak var emotion4: UIButton!
    @IBOutlet weak var emotion5: UIButton!
    @IBOutlet weak var emotion6: UIButton!
    @IBOutlet weak var emotion7: UIButton!
    @IBOutlet weak var emotion8: UIButton!
    @IBOutlet weak var emotion9: UIButton!
    
    @IBOutlet weak var info1: UILabel!
    @IBOutlet weak var info2: UILabel!
    @IBOutlet weak var info3: UILabel!
    @IBOutlet weak var info4: UILabel!
    @IBOutlet weak var info5: UILabel!
    @IBOutlet weak var info6: UILabel!
    @IBOutlet weak var info7: UILabel!
    @IBOutlet weak var info8: UILabel!
    @IBOutlet weak var info9: UILabel!
    
    var countClick = [Int](repeating: 0, count: 9)
    var emotionArr = ["행복해", "사랑해", "좋아해", "화나", "심심해", "졸려", "당황해", "우울해", "속상해"]
    var infoArr: [UILabel] {
        [info1, info2, info3, info4, info5, info6, info7, info8, info9]
    }
    var buttonArr: [UIButton] {
        [emotion1, emotion2, emotion3, emotion4, emotion5, emotion6, emotion7, emotion8, emotion9]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        for item in Range(0...8) {
                infoArr[item].text = "\(emotionArr[item]) \(countClick[item])"
    }
}
    @IBAction func emotion1Clicked(_ sender: UIButton) {
        countClick[sender.tag] += 1
        infoArr[sender.tag].text = "\(emotionArr[sender.tag]) \(countClick[sender.tag])"
    }
    @IBAction func emotion2Clicked(_ sender: UIButton) {
        countClick[sender.tag] += 1
        infoArr[sender.tag].text = "\(emotionArr[sender.tag]) \(countClick[sender.tag])"
    }
    
    
}

/*
#질문
 1.(34행) var infoArr: [UILabel] 표현법
 뷰객체 배열 표현은 var 변수명: [뷰객체] 인지?
 2.(49행) sender.tag가 왜필요하고 어떻게 기능하는지?

 
 #느낀점
 1. 감정종류와 클릭수를 별도의 변수로 구분함
 2. 현재 코드는 노가다처럼 일일이 객체지정했지만 반복문처럼 처리할 수 있는 방법을 고민해봐야함.
 3. 레이아웃까지는 혼자했는데 아웃렛설정, 액션함수 설정은 혼자못해서 코드참고함. 무슨 기능이 있고 필요한지 자체를 모르기 때문에 당분간은 역으로 코드를 보고 구현방법에 익숙해져야겠음.

 *참고코드(최지원님): https://github.com/ziuge
*/
