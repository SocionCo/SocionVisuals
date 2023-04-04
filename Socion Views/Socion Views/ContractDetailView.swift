//
//  ContractDetailView.swift
//  SocionDeadViews
//
//  Created by Ted Wind on 4/1/23.
//

import SwiftUI

struct ContractDetailView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                Text("Contract Detail View Here")
            }
        }
    }
}

struct ContractDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContractDetailView()
        }
    }
}
