//
//  BreatheInputViewController.swift
//  Clarity
//
//  Created by Kamalika Kummathi on 8/3/21.
//

import UIKit

class BreatheInputViewController: UIViewController {

    @IBOutlet weak var timerSlider: UISlider!
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func timerSliderAction(_ sender: UISlider) {
        timerSlider.isContinuous = true
        let value = timerSlider.value
        let newValue = Int(round(value))
        timerLabel.text = String(newValue)
    }
    @IBAction func goButton(_ sender: UIButton) {
        
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
