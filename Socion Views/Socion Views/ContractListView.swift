//
//  ContractListView.swift
//  SocionDeadViews
//
//  Created by Ted Wind on 4/1/23.
// Test

import SwiftUI

struct ContractListView: View {
    @State private var agencyName = "The Viralist Group"
    @State var searchText = ""
    let contracts: [Contract] = [Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Handshake", status: .done, influencer: "Ted Wind"), Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Handshake", status: .notStarted, influencer: "Ted Wind")]
    var body: some View {
        NavigationStack {
            VStack {
                Text(agencyName)
                    .frame(width: 700, height: 80)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .foregroundColor(.white)
                    .background(.green)
                
                TextField("  Search contacts...", text: $searchText)
                    .textFieldStyle(.plain)
                    .frame(width: 370)
                    .padding(.horizontal, 3.0)
                    .padding(.vertical, 4.0)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.gray.opacity(0.5), lineWidth: 2)
                    }
                
                List {
                    Section {
                        ForEach(contracts, id: \.self) { contract in
                            NavigationLink {
                                ContractDetailView()
                            }
                        label: {
                            VStack (alignment: .leading, spacing: 8) {
                                Text(contract.company)
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Text(contract.status.rawValue)
                                    .padding(.all, 7.0)
                                    .font(.title2)
                                    .background {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(statusColor(contract: contract))
                                    }
                            }
                        }
                        }
                        .padding(.vertical)
                        
                    }
                }
                .listStyle(.plain)
            }
        }
    }
    func statusColor(contract: Contract) -> Color {
        switch contract.status {
        case.notStarted:
            return .red
        case .inProgress:
            return .orange
        case .done:
            return .green
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContractListView()
    }
}
