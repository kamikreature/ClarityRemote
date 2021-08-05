//
//  BreatheViewController.swift
//  Clarity
//
//  Created by Kamalika Kummathi on 8/3/21.
//

import UIKit

class BreatheViewController: UIViewController {
    
    var clarityData = ClarityData()

    @IBOutlet weak var timerProgressBar: UIProgressView!
    
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer.invalidate()
        timerProgressBar.progress = 0.0
        
        secondsPassed = 0
        totalTime = clarityData.breathingTimerInput * 60
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            timerProgressBar.progress = Float(secondsPassed) / Float(totalTime)
            print(Float(secondsPassed) / Float(totalTime))
        } else {
            timer.invalidate()
            print("timer done")
            
            //let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            //player = try! AVAudioPlayer(contentsOf: url!)
           // player.play()
        }
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
