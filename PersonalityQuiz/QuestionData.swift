//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Amerens Geeske Jongsma on 30/04/2018.
//  Copyright © 2018 Amerens Jongsma. All rights reserved.
//

import Foundation


struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}


struct Answer {
    var text: String
    var type: DrinkType
}

enum DrinkType: Character {
    case beer = "🍺", milk = "🥤", wine = "🍷", coffee = "☕"
    
    var definition: String {
        switch self {
        case .beer:
            return "You like beer"
        case .milk:
            return "You like milkshakes"
        case .wine:
            return "You like wine"
        case .coffee:
            return "You like coffee"
        }
    }
}
