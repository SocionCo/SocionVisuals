//
//  ContractListView.swift
//  SocionDeadViews
//
//  Created by Ted Wind on 4/1/23.
//

import SwiftUI

struct ContractListView: View {
    @State private var agencyName = "The Viralist Group"
    @State var searchText = ""
    let contracts: [Contract] = [Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Handshake", status: .notStarted, influencer: "Ted Wind"), Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo"), Contract(company: "Handshake", status: .notStarted, influencer: "Ted Wind")]
    var body: some View {
        NavigationStack {
            VStack {
                Group {
                    Text(agencyName)
                        .frame(width: 500, height: 80)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.white)
                        .background(.green)
                    
                    TextField("Search contacts...", text: $searchText)
                        .textFieldStyle(.plain)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray.opacity(0.5), lineWidth: 2)
                        }
                        .padding(.horizontal)
                }
                
                
                List {
                    Section {
                        ForEach(contracts, id: \.self) { contract in
                            NavigationLink {
                                ContractDetailView()
                            }
                        label: {
                            VStack {
                                Text(contract.company)
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Text(contract.status.rawValue)
                                    .font(.title2)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContractListView()
    }
}
