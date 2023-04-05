//
//  InfluencerListView.swift
//  Socion Views
//
//  Created by Ted Wind on 4/4/23.
//

import SwiftUI

struct InfluencerListView: View {
    @State var searchText = ""
    let influencer = Influencer(name: "Dan the Man Biundo",contracts: [Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo", rate: 100), Contract(company: "Brawl Stars", status: .notStarted, influencer: "Dan Biundo",rate: 2000), Contract(company: "Brawl Stars", status: .inProgress, influencer: "Dan Biundo", rate: 800), Contract(company: "Brawl Stars", status: .done, influencer: "Dan Biundo", rate: 650)]) // Only Dan's contracts)
    var body: some View {
        NavigationStack {
            VStack {
                Text(influencer.name)
                    .frame(width: 700, height: 80)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .foregroundColor(.white)
                    .background(.green)
                
                TextField("  Search contracts...", text: $searchText)
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
                        ForEach(influencer.contracts, id: \.self) { contract in
                            NavigationLink {
                                InfluencerDetailView()
                            }
                        label: {
                            HStack {
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
                                Spacer()
                                VStack(alignment: .center) {
                                    Spacer()
                                    Text("$\(String(contract.rate))")
                                        .font(.title2)
                                        .bold()
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

struct InfluencerListView_Previews: PreviewProvider {
    static var previews: some View {
        InfluencerListView()
    }
}
