//
//  SoloViewController.swift
//  rockPaperScissors
//
//  Created by DEKLAN KIRK on 11/17/22.
//

import UIKit


class SoloViewController: UIViewController {

    @IBOutlet weak var compRPSLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var soloScore = 0
    var choseRock = false
    var chosePaper = false
    var choseScissors = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func rockAction(_ sender: UIButton) {
        choseRock = true
        chosePaper = false
        choseScissors = false
        compChoose()
        
    }
    
    @IBAction func paperAction(_ sender: UIButton) {
        chosePaper = true
        choseRock = false
        choseScissors = false
        compChoose()
    }
    
    @IBAction func scissorsAction(_ sender: UIButton) {
        choseScissors = true
        choseRock = false
        chosePaper = false
        compChoose()
    }
    
    func compChoose(){
        
        let randomNum = Int.random(in: 1..<4)
        print("num = \(randomNum)")
        if (randomNum == 1){
            compRPSLabel.text = "Rock"
            if(chosePaper == true){
                soloScore += 1
            }
            if(choseScissors == true){
                soloScore -= 1
            }
        }
        if (randomNum == 2){
            print(randomNum)
            compRPSLabel.text = "Paper"
            if(choseScissors == true){
                soloScore += 1
            }
            if(choseRock == true){
                soloScore -= 1
            }
        }
        if (randomNum == 3){
            print(randomNum)
            compRPSLabel.text = "Scissors"
            if(choseRock == true){
                soloScore += 1
            }
            if(chosePaper == true){
                soloScore -= 1
            }
        }
        compRPSLabel.isHidden = false
        scoreLabel.text = "Score: \(soloScore)"
        
    }
    

}
