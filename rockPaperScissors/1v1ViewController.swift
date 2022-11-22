//
//  1v1ViewController.swift
//  rockPaperScissors
//
//  Created by DEKLAN KIRK on 11/21/22.
//

import UIKit

class _v1ViewController: UIViewController {

    @IBOutlet weak var winLoseLabel: UILabel!
    
    
    @IBOutlet weak var rButton: UIButton!
    
    @IBOutlet weak var pButton: UIButton!
    
    @IBOutlet weak var sButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    var bgColor = true
    
    var choseRock = false
    var chosePaper = false
    var choseScissors = false
    var choseRock2 = false
    var chosePaper2 = false
    var choseScissors2 = false
    var p1HasGone = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgainButton.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playAgainAction(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.red
        winLoseLabel.text = ""
         choseRock = false
         chosePaper = false
         choseScissors = false
         choseRock2 = false
         chosePaper2 = false
         choseScissors2 = false
         p1HasGone = false
        rButton.isHidden = false
        pButton.isHidden = false
        sButton.isHidden = false
        playAgainButton.isHidden = true
        
    }
    
    
    @IBAction func rockAction(_ sender: UIButton) {
        if(p1HasGone == false){
            choseRock = true
            self.view.backgroundColor = UIColor.blue
        p1HasGone = true
        }
        else{
            choseRock2 = true
                self.view.backgroundColor = UIColor.green
            rps()
        }
    }
    @IBAction func paperAction(_ sender: UIButton) {
        if(p1HasGone == false){
            chosePaper = true
            self.view.backgroundColor = UIColor.blue
            p1HasGone = true
        }
        else{
            chosePaper2 = true
                self.view.backgroundColor = UIColor.green
            rps()
        }
    }
    @IBAction func scissorsAction(_ sender: UIButton) {
        if(p1HasGone == false){
            choseScissors = true
                self.view.backgroundColor = UIColor.blue
            p1HasGone = true
        }
        else{
            choseScissors2 = true
                self.view.backgroundColor = UIColor.green
            rps()
        }
    }
    
    func rps(){
        if(choseRock == true && choseRock2 == true){
            winLoseLabel.text = "Tie!"
            winLoseLabel.isHidden = false
        }
        
        if(chosePaper == true && chosePaper2 == true){
            winLoseLabel.text = "Tie!"
            winLoseLabel.isHidden = false
        }
        
        if(choseScissors == true && choseScissors2 == true){
            winLoseLabel.text = "Tie!"
            winLoseLabel.isHidden = false
        }
        
        if(choseRock == true && chosePaper2 == true){
            winLoseLabel.text = "Blue Wins! \n Paper Beats Rock"
            winLoseLabel.isHidden = false
        }
        
        if(choseRock == true && choseScissors2 == true){
            winLoseLabel.text = "Red Wins! \n Rock Beats Scissors!"
            winLoseLabel.isHidden = false
        }
        
        if(chosePaper == true && choseRock2 == true){
            winLoseLabel.text = "Red wins!\n Paper Beats Rock!"
            winLoseLabel.isHidden = false
        }
        
        if(chosePaper == true && chosePaper2 == true){
            winLoseLabel.text = "Tie!"
            winLoseLabel.isHidden = false
        }
        
        if(chosePaper == true && choseScissors2 == true){
            winLoseLabel.text = "Blue Wins! \n Scissors Beat Paper!"
            winLoseLabel.isHidden = false
        }
        
        if(choseScissors == true && choseRock2 == true){
            winLoseLabel.text = "Blue wins!\n Rock Beats Scissors!"
            winLoseLabel.isHidden = false
        }
        
        if(choseScissors == true && chosePaper2 == true){
            winLoseLabel.text = "Red Wins!\n Scissors Beat Paper!"
            winLoseLabel.isHidden = false
        }
        
        if(choseScissors == true && choseScissors2 == true){
            winLoseLabel.text = "Tie!"
            winLoseLabel.isHidden = false
        }
        
        rButton.isHidden = true
        pButton.isHidden = true
        sButton.isHidden = true
        playAgainButton.isHidden = false
        
    }
 
}
