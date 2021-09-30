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

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

