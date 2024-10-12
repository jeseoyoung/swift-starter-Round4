//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myCondition = BodyCondition(upperBodyStrength: Int.random(in: 1...10),
                                lowerBodyStrength: Int.random(in: 1...10),
                                muscularEndurance: Int.random(in: 1...10),
                                fatigue: Int.random(in: 1...10)
)
exercise(윗몸일으키기, who: &myCondition)
myCondition.conditionCheck()
