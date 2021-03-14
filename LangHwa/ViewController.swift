//
//  ViewController.swift
//  LangHwa
//
//  Created by 최준영 on 2/13/21.
//

import UIKit ;

class QuestionViewController: UIViewController {
    
    let questions = ["quesiton 1","question 2","question 3","quesiton 4","question 5"]
    
    let answers = [["answer 1","wrong 1"],["answer 2","wrong 2"],["answer 3", "wrong 3"],["answer 4","wrong 5"],["answer 5","wrong 5"]]
    
    //Variables
    var currentQuestion = 0
    var rightAnswerPlacement = 0
    var points = 0;
    
    //Lable
    @IBOutlet weak var lbl: UILabel!
    
    //Button    
    @IBAction func Action(_ sender: AnyObject) {
        if (sender.tag == Int(rightAnswerPlacement)) {
            print ("right")
            points += 1
        }
        else {
            print ("wrong")
        }
        if (currentQuestion != questions.count) {
            newQuestion()
        }
        else {
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
//    Function that displays new quesitons
    func newQuestion() {
        lbl.text = questions[currentQuestion]
        
        rightAnswerPlacement = Int(arc4random_uniform(2)+1)
        
        //create a button
        
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...2 {
            // create a button
            button = view.viewWithTag(i) as! UIButton
            if (i == Int(rightAnswerPlacement)) {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
        }
        currentQuestion += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
} ;

class SideMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
};

import AuthenticationServices ;

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
} ;

extension ViewController {
    @IBAction func cancelToViewController(_ segue: UIStoryboardSegue){
    }
};

