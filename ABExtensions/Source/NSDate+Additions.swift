//
//  NSDate+Additions.swift
//  Lango
//
//  Created by Asif Bilal on 01/08/2016.
//  Copyright © 2016 Asif Bilal. All rights reserved.
//

import Foundation

public extension Date {
    
    func formattedDate(_ pattern:String) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = pattern
        //dateFormatter.timeZone = NSTimeZone(name: "UTC")
        return dateFormatter.string(from: self)
        
    }
    
    func formattedDate(_ style:DateFormatter.Style) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = style
        //dateFormatter.timeZone = NSTimeZone(name: "UTC")
        return dateFormatter.string(from: self)
        
    }
    
    func isEligibleToBecomeInterpreter() -> Bool{
    
        let minimumEligibleDate = (Calendar.current as NSCalendar).date(byAdding: .year, value: -13, to: Date(), options: [])!
        
        if self > minimumEligibleDate{
            return false
        }
        return true
    }
    
    func isDateInToday() -> Bool {
        return Calendar.current.isDateInToday(self)
    }
    
    func isSmallerThanDate(_ date: Date) -> Bool {
        
        let intervalBetweenDates = date.timeIntervalSince(self)
        let secondsInMinute: Double = 60
        let secondsBetweenDates = intervalBetweenDates / secondsInMinute
        if secondsBetweenDates >= 0 { return true}
        
        return false
    }
    
    func differenceFromDate(_ anotherDate: Date) -> Date {
        
        let differnceInSeconds = timeIntervalSince(anotherDate)
        return Date(timeIntervalSinceReferenceDate: differnceInSeconds)
        
    }
    
    func getDayMonthYear() -> (day: Int, month: Int, year: Int) {
        
        let calendar = (Calendar.current as NSCalendar).components([.day, .month, .year], from: self)
        return (calendar.day!, calendar.month!, calendar.year!)
    }
    
}
