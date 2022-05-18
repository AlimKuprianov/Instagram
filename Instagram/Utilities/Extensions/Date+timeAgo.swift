//
//  Date+timeAgo.swift
//  Instagram
//
//  Created by Alim Kuprianov on 25.03.2022.
//

import UIKit

extension Date {
    func timeAgo() -> String? {
        let formatter = DateComponentsFormatter()
        
        formatter.unitsStyle = .full
        formatter.allowedUnits = [.year, .month, .day, .hour, .minute, .second]
        formatter.zeroFormattingBehavior = .dropAll
        formatter.maximumUnitCount = 1
        
        guard let timeAgoFormat = formatter.string(from: self, to: Date()) else { return nil }
         
        let timeAgo = String(format: timeAgoFormat, locale: .current)
        
        return timeAgo
    }
}
