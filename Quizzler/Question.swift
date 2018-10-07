//
//  Question.swift
//  Quizzler
//
//  Created by Pierre-Luc Bruyere on 2018-10-07.
//  Copyright © 2018 Heather Productions. All rights reserved.
//

import Foundation

class Question<T>
{
  let questionText : String
  let answer : T

  init(text: String, correctAnswer: T)
  {
    questionText = text
    answer = correctAnswer
  }
}
