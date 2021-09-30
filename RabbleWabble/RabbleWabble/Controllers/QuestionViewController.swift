//
//  QuestionViewController.swift
//  RabbleWabble
//
//  Created by Albert Pangestu on 29/09/21.
//

import UIKit

public class QuestionViewController: UIViewController {
    
    // MARK: - Instance properties
    public var questionGroup = QuestionGroup.basicPhrases()
    public var questionIndex = 0
    
    public var correctCount = 0
    public var incorrectCount = 0
    
    public var questionView: QuestionView! {
        guard isViewLoaded else {
            return nil
        }
        return (view as! QuestionView)
    }

    // MARK: - View Lifecycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        showQuestion()
    }

    private func showQuestion() {
        let question = questionGroup.questions[questionIndex]
        
        questionView.answerLabel.text = question.answer
        questionView.promptLabel.text = question.prompt
        questionView.hintLabel.text = question.hint
        
        questionView.answerLabel.isHidden = true
        questionView.hintLabel.isHidden = true
    }
    
    // MARK: - Actions
    @IBAction func toggleAnswerLabels(_ sender: Any) {
        questionView.answerLabel.isHidden = !questionView.answerLabel.isHidden
        questionView.hintLabel.isHidden = !questionView.hintLabel.isHidden
    }

}

