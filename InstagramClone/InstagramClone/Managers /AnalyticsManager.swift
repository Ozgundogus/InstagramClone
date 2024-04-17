//
//  AnalyticsManager.swift
//  InstagramClone
//
//  Created by Ozgun Dogus on 30.03.2024.
//

import Foundation
import FirebaseAnalytics


final class AnalyticsManager {
    
    static let shared = AnalyticsManager()
    
    private init() {}
 
    func logEvent () {
        Analytics.logEvent("", parameters: [:])
    }
    
}


