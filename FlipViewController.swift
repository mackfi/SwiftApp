//
//  FlipViewController.swift
//  SunCoin
//
//  Created by MACK FISCHER on 4/7/23.
//

import UIKit

class FlipViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coin Flip"
        // Do any additional setup after loading the view.
    }
    
    var tailsOdds = 0.5
    var headsOdds = 0.5
    
    @IBOutlet weak var flipSlider: UISlider!
    
    @IBOutlet weak var tailsLabel: UILabel!
    
    @IBOutlet weak var headsLabel: UILabel!
    
    @IBAction func sliderChanged(_ sender: Any) {
        UpdateFlipOdds()
        tailsLabel.text = "Tails: " + String(Double(round(100 * tailsOdds) / 100) * 100) + "%"
        headsLabel.text = "Heads: " + String(Double(round(100 * headsOdds) / 100) * 100) + "%"
    }
    
    func UpdateFlipOdds() {
        tailsOdds = 1 - Double(flipSlider.value)
        headsOdds =  Double(flipSlider.value)
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
