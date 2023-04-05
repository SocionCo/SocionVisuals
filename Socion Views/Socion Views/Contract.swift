//
//  Contract.swift
//  SocionDeadViews
//
//  Created by Ted Wind on 4/1/23.
//

import Foundation

struct Contract: Hashable {
    
    enum Progress: String, CaseIterable {
        case notStarted = " Not Started "
        case inProgress = " In Progress "
        case done = " Done "
    }
    
    var agency = "" // Agency model
    var company = ""
    var status: Progress
    var influencer = ""
    var rate = 0 // Make this a double
    
}
