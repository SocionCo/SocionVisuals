//
//  Contract.swift
//  SocionDeadViews
//
//  Created by Ted Wind on 4/1/23.
//

import Foundation

struct Contract: Hashable {
    
    enum Progress: String, CaseIterable {
        case notStarted = "Not Started"
        case inProgress = "In Progress"
        case done = "Done"
    }
    
    var company = ""
    var status: Progress
    var influencer = "" // This will eventually be an influencer model
    
}
