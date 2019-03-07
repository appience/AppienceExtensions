//
//  Date+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import Foundation

extension Date {
    func since() -> String {
        let now:Date = Date()
        
        let seconds = abs(now.timeIntervalSince1970 - timeIntervalSince1970)
        if seconds <= 120 {
            return "now"
        }
        
        let minutes = Int(floor(seconds / 60))
        if minutes <= 60 {
            return "\(minutes)m"
        }

        let hours = minutes / 60
        if hours <= 24 {
            return "\(hours)h"
        }

        let days = hours / 24
        if days <= 30 {
            return "\(days)d"
        }
        
        let months = days / 30
        if months <= 12 {
            return "\(months)m"
        }
        
        let years = months / 12
        return "\(years)y"
    }
    
    init(dateString: String, format: String) {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = format
        
        guard let date = formatter.date(from: dateString) else {
            self = Date()
            return
        }
        self = date
    }
    
    func string(_ format:String? = nil) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        if format == nil  {
            formatter.dateStyle = .medium
        } else {
            formatter.dateFormat = format
        }
        return formatter.string(from: self)
    }

}
