//
//  TipViewController.swift
//  SunCoin
//
//  Created by MACK FISCHER on 4/6/23.
//

import UIKit

class TipViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var PriceEntry: UITextField!
    
    @IBOutlet weak var PercentEntry: UITextField!
    
    
    @IBOutlet weak var TipLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBAction func PriceEntered(_ sender: Any) {
        PercentEntered()
    }
    
    @IBAction func PriceChanged(_ sender: Any) {
        PercentEntered()
    }
    
    @IBAction func TipEntered(_ sender: Any) {
        PercentEntered()
    }
    
    
    @IBAction func TipChanged(_ sender: Any) {
        PercentEntered()
    }
    
    func PercentEntered()
    {
        var tipAmount = 0.00
        var priceAmount = 0.00
        if (PriceEntry.text != nil && PercentEntry.text != nil)
        {
            priceAmount = (Double(PriceEntry.text!) ?? 0)
            
             tipAmount =  priceAmount * (Double(PercentEntry.text!) ?? 0)
            
            tipAmount = Double(round(100 * tipAmount) / 100)
            
            priceAmount = Double(round(100 * priceAmount) / 100)
        }
        
        TipLabel.text = "Tip amount: $" + String(format: "%.2f", tipAmount)
        TotalLabel.text = "Total after tip: $" + String(format: "%.2f",tipAmount + priceAmount)
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
