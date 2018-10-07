//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Pierre-Luc Bruyere on 2018-10-07.
//  Copyright © 2018 Heather Productions. All rights reserved.
//

import Foundation

class QuestionBank
{
  var list = [Question<Bool>]()

  init()
  {
    // Creating a quiz item and appending it to the list
    let item = Question<Bool>(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)

    // Add the Question to the list of questions
    list.append(item)

    // skipping one step and just creating the quiz item inside the append function
    list.append(Question<Bool>(text: "A slug\'s blood is green.", correctAnswer: true))
    list.append(Question<Bool>(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
    list.append(Question<Bool>(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
    list.append(Question<Bool>(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
    list.append(Question<Bool>(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
    list.append(Question<Bool>(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
    list.append(Question<Bool>(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
    list.append(Question<Bool>(text: "Google was originally called \"Backrub\".", correctAnswer: true))
    list.append(Question<Bool>(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
    list.append(Question<Bool>(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
    list.append(Question<Bool>(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
    list.append(Question<Bool>(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
  }
}
