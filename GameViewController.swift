//
//  GameViewController.swift
//  SunCoin
//
//  Created by MACK FISCHER on 4/7/23.
//

import UIKit


class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SunCoin Game"
        // Do any additional setup after loading the view.
    }
    private var totalClicks = 0
    
    
    @IBOutlet weak var clickerButton: UIButton!
    
    @IBOutlet weak var totalClicksLabel: UILabel!
    
    @IBAction func onClickerClicked(_ sender: Any) {
        totalClicks += 1
        totalClicksLabel.text = "You have clicked \(totalClicks) times."
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
