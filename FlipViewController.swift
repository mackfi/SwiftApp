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
    
    
    
    private var tailsOdds = 0.5
    private var headsOdds = 0.5
    
    private var totalOdds = 1.0
    
    private var numOfFlips = 0.0
    private var numOfHeads = 0.0
    
    @IBOutlet weak var flipSlider: UISlider!
    
    @IBOutlet weak var tailsLabel: UILabel!
    
    @IBOutlet weak var headsLabel: UILabel!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var totalOddsLabel: UILabel!
    @IBOutlet weak var flipButton: UIButton!
    @IBOutlet weak var headsPercentLabel: UILabel!
    
    @IBAction func sliderChanged(_ sender: Any) {
        UpdateFlipOdds()
        tailsLabel.text = "Tails: " + String(format: "%.0f", tailsOdds * 100) + "%"
        headsLabel.text = "Heads: " + String(format: "%.0f", headsOdds * 100) + "%"
    }
    
    func UpdateFlipOdds() {
        tailsOdds = 1 - Double(flipSlider.value)
        headsOdds =  Double(flipSlider.value)
    }
    
    @IBAction func CoinFlipped(_ sender: Any) {
        
        
        var rand = Double.random(in: 0..<1)
        if (rand < headsOdds){
            resultLabel.text = "Heads!"
            totalOdds *= headsOdds
            numOfHeads += 1
        }
        else {
            resultLabel.text = "Tails!"
            totalOdds *= tailsOdds
        }
        numOfFlips += 1
        totalOddsLabel.text = String(format: "%.3f", totalOdds * 100) + "%"
        headsPercentLabel.text = String(format: "%.3f", numOfHeads/numOfFlips) + "%"
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
