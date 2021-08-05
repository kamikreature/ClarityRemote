//
//  CalendarViewController.swift
//  Clarity
//
//  Created by Kamalika Kummathi on 8/3/21.
//

import FSCalendar
import UIKit


class CalendarViewController: UIViewController, FSCalendarDelegate, FSCalendarDelegateAppearance {
    
    @IBOutlet var calendar: FSCalendar!
    var clarityData = ClarityData()
    
    var localDates: DateFormatter
    

    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print("monke")
        print(date)
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"

        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMM dd,yyyy"

        print(dateFormatterPrint.string(from: date))
      
    }
    
    func formatAllDates(<#parameters#>) -> <#return type#> {
        for all dates in clarityData.dateArray {
             var dateFormatter1: DateFormatter = {
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy/MM/dd"
                return formatter
            }()
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
