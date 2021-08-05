//
//  LogViewController.swift
//  Clarity
//
//  Created by Kamalika Kummathi on 8/3/21.
//

import UIKit

class LogViewController: UIViewController {
    
    var clarityData = ClarityData()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clarityData.todayScore = 0
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addOnePoint(_ sender: UIButton) {
        //sender.isEnabled = false
        clarityData.todayScore += 1
        
    }
    @IBAction func addTwoPoints(_ sender: UIButton) {
        //sender.isEnabled = false
        clarityData.todayScore += 2
    }
    @IBAction func addThreePoints(_ sender: UIButton) {
        //sender.isEnabled = false
        clarityData.todayScore += 3
    }
    @IBAction func addFourPoints(_ sender: UIButton) {
       // sender.isEnabled = false
        clarityData.todayScore += 4
    }
    
    
    
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        let calculatedScore = Int(((clarityData.todayScore) / 23) * 100)
        let doneDate = DateFormatter()
        doneDate.dateFormat = "MMM dd,yyyy"
        clarityData.dateArray.append(doneDate)
        
        let calculatedColor = UIColor.white
        
        if calculatedScore <= 52 {
            clarityData.colorArray.append(UIColor(red: 0, green: 0.949, blue: 0.5216, alpha: 1.0))   
        } else if calculatedScore <= 70 {
            clarityData.colorArray.append(UIColor(red: 0.9098, green: 0.8941, blue: 0, alpha: 1.0))
        } else if calculatedScore <= 87 {
            clarityData.colorArray.append(UIColor(red: 0.9686, green: 0.6118, blue: 0, alpha: 1.0))
        } else {
            clarityData.colorArray.append(UIColor(red: 0.8784, green: 0, blue: 0, alpha: 1.0))
        }
        
        print(clarityData.colorArray)
        print(clarityData.dateArray)
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
