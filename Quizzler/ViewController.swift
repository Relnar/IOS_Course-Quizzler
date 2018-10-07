//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  //Place your instance variables here
  private var questionBank = QuestionBank()
  private var currentQuestion = 0
  private var currentScore = 0


  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet var progressBar: UIView!
  @IBOutlet weak var progressLabel: UILabel!

  override func viewDidLoad()
  {
    super.viewDidLoad()

    startOver()
  }

  @IBAction func answerPressed(_ sender: AnyObject)
  {
    if checkAnswer(userAnswer: sender.tag == 1)
    {
      currentScore += 1
    }
    nextQuestion()
  }

  func updateUI()
  {
    questionLabel.text = questionBank.list[currentQuestion].questionText
    progressLabel.text = "\(currentQuestion + 1)/\(questionBank.list.count)"
    scoreLabel.text = "Score:\(currentScore)"
    progressBar.frame.size.width = CGFloat(currentQuestion + 1) * view.frame.size.width / CGFloat(questionBank.list.count)
  }

  func nextQuestion()
  {
    if currentQuestion < questionBank.list.count - 1
    {
      currentQuestion += 1
      updateUI()
    }
    else
    {
      currentQuestion = questionBank.list.count - 1
      let alert = UIAlertController(title: "End of quiz", message: "Restart the quiz ?", preferredStyle: .alert)
      let restartAction = UIAlertAction(title: "Restart",
                                        style: .default,
                                        handler:
                                        { (UIAlertAction) in
                                          self.startOver()
                                        })
      alert.addAction(restartAction)
      present(alert, animated: true, completion: nil)
    }
  }

  func checkAnswer(userAnswer : Bool) -> Bool
  {
    return questionBank.list[currentQuestion].answer == userAnswer
  }

  func startOver()
  {
    currentQuestion = 0
    currentScore = 0
    updateUI()
  }
}
