//
//  ViewController.swift
//  DaterProject
//
//  Created by fkahraman on 21.06.2019.
//  Copyright © 2019 fkahraman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //let transactionDate = Date()
        
        let date = dater(months: -12,days: 0,years: 0,dateFormat: "dd.MM.YYYY HH:mm:ss")
        print("date \(date)")
    }
    
    public func dater(months:Int,days:Int,years:Int,dateFormat:String) -> String {

        let monthsToAdd = months
        let daysToAdd = days
        let yearsToAdd = years
        let currentDate = Date()
        let format = DateFormatter()
        format.dateFormat = dateFormat
        var dateComponent = DateComponents()
        
        dateComponent.month = monthsToAdd
        dateComponent.day = daysToAdd
        dateComponent.year = yearsToAdd
        
        let futureDate = Calendar.current.date(byAdding: dateComponent, to: currentDate)
        let formattedDate = format.string(from: futureDate!)
        return formattedDate
    }
}

