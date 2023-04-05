//
//  Influencer.swift
//  Socion Views
//
//  Created by Ted Wind on 4/4/23.
//

import Foundation

struct Influencer: Hashable {
    
    var id = "" //UUID
    var name = ""
    var agency = "" // Agency Model
    var contracts: [Contract] // This needs to be an array of contracts
    
}
