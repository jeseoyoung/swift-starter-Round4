//
//  Activity.swift
//  CodeStarterCamp_Week4
//
//  Created by jeseoyoung on 2024/10/11.
//

import Foundation


enum WorkOutName {
    case 윗몸일으키기, 스쿼트, 오래달리기, 동적휴식
}

struct Activity {
        let name: WorkOutName
        let action: (inout BodyCondition) -> Void
}

let 윗몸일으키기: Activity = Activity(name: .윗몸일으키기,
                                action: { bodyCondition in
    var gainedStrength = generateRandomNumber(from: 10, to: 20)
    bodyCondition.upperBodyStrength += gainedStrength
    
    var gainedFatigue = generateRandomNumber(from: 10, to: 20)
    bodyCondition.fatigue += gainedFatigue
    
    print("상체근력이 \(gainedStrength) 상승합니다.")
    print("피로도가 \(gainedFatigue) 상승합니다.")
    
})

let 스쿼트: Activity = Activity(name: .스쿼트,
                                action: { bodyCondition in
    var gainedStrength = generateRandomNumber(from: 20, to: 30)
    bodyCondition.lowerBodyStrength += gainedStrength
    
    var gainedFatigue = generateRandomNumber(from: 10, to: 20)
    bodyCondition.fatigue += gainedFatigue
    
    print("하체근력이 \(gainedStrength) 상승합니다.")
    print("피로도가 \(gainedFatigue) 상승합니다.")
})

let 오래달리기: Activity = Activity(name: .오래달리기,
                               action: { bodyCondition in
    var gainedMuscluarEndurance = generateRandomNumber(from: 20, to: 30)
    bodyCondition.muscularEndurance += gainedMuscluarEndurance
    
    var gainedUpperBodyStrength = generateRandomNumber(from: 5, to: 10)
    bodyCondition.upperBodyStrength += gainedUpperBodyStrength
    
    var gainedLowerBodyStrength = generateRandomNumber(from: 5, to: 10)
    bodyCondition.lowerBodyStrength += gainedLowerBodyStrength
    
    var gainedFatigue = generateRandomNumber(from: 20, to: 30)
    bodyCondition.fatigue += gainedFatigue
    
    print("근지구력이 \(gainedMuscluarEndurance) 상승합니다.")
    print("상체근력이 \(gainedUpperBodyStrength) 상승합니다.")
    print("하체근력이 \(gainedLowerBodyStrength) 상승합니다.")
    print("피로도가 \(gainedFatigue) 상승합니다.")
})

let 동적휴식: Activity = Activity(name: .동적휴식,
                              action: { bodyCondition in
    var losedFatigue = generateRandomNumber(from: 5, to: 10)
    bodyCondition.fatigue -= losedFatigue
    
    print("피로도가 \(losedFatigue) 하락합니다.")
})

private func generateRandomNumber(from a: Int, to b: Int) -> Int {
    return Int.random(in: a...b)
}

func exercise(_ type: Activity, who: inout BodyCondition) -> Void {
    print("<<\(type.name)을(를) 시작합니다>>")
    print("------------")
    
    do {
        try type.action(&who)
    }
}
