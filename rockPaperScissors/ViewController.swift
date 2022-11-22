//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by DEKLAN KIRK on 11/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var soloOutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soloOutlet.isSelected = true
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        soloOutlet.isSelected = true
    }


}

