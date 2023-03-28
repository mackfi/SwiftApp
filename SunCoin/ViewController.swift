//
//  ViewController.swift
//  SunCoin
//
//  Created by MACK FISCHER on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBOutlet weak var gameButton: UIButton!
    @IBOutlet weak var vaultButton: UIButton!
    @IBOutlet weak var interestButton: UIButton!
    @IBOutlet weak var flipButton: UIButton!
    @IBOutlet weak var tipButton: UIButton!
    
    @IBOutlet weak var homeImage: UIImageView!
    
    
    @IBAction func MenuButtonClicked(_ sender: Any) {
        MakeMenuInvisible()
    }
    
    @IBAction func HomeImageClicked(_ sender: Any) {
        MakeMenuVisible()
    }
    
    
     func MakeMenuInvisible() {
         gameButton.isEnabled = false
         flipButton.isEnabled = false
         tipButton.isEnabled = false
         interestButton.isEnabled = false
         vaultButton.isEnabled = false
         
         gameButton.isHidden = true
         flipButton.isHidden = true
         tipButton.isHidden = true
         interestButton.isHidden = true
         vaultButton.isHidden = true
    }
    
    func MakeMenuVisible() {
        gameButton.isEnabled = true
        flipButton.isEnabled = true
        tipButton.isEnabled = true
        interestButton.isEnabled = true
        vaultButton.isEnabled = true
        
        gameButton.isHidden = false
        flipButton.isHidden = false
        tipButton.isHidden = false
        interestButton.isHidden = false
        vaultButton.isHidden = false
    }
    
    
}

