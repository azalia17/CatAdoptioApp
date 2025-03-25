//
//  ContentView.swift
//  CatAdoptio
//
//  Created by Azalia Amanda on 24/03/25.
//

import SwiftUI

// View at struct ContentView: View -> protocol

struct ContentView: View {
    @State private var isShowFilter: Bool = false
    @State private var search: String = ""
    @State private var isDetailPageShwon: Bool = false
    
    var pets: [Pet] = Pet.all
    
    var filteredPets: [Pet] {
            if search.isEmpty {
                return pets
            } else {
                return pets.filter {
                    $0.name.localizedCaseInsensitiveContains(search) || $0.catType.localizedCaseInsensitiveContains(search)
                }
            }
        }
    
    var body: some View {
        NavigationStack {
//            ScrollView {
//                LazyVStack {
//                    ForEach(1 ..< 1000) { index in
//                        PetCard(pet: Pet.all[0])
//                            .simultaneousGesture(TapGesture().onEnded({ _ in
//                                isDetailPageShwon .toggle()
//                            }))
//                            .sensoryFeedback(.success, trigger: isDetailPageShwon)
//                            .padding([.bottom, .top])
//                        Divider()
//                    }
//                }
//                .safeAreaPadding()
//            }
            List(1 ..< 1000) { index in
                NavigationLink {
                    PetDetailView(pet: Pet.all[0])
                } label: {
                    PetCard(pet: Pet.all[0])
                        .simultaneousGesture(TapGesture().onEnded({ _ in
                            isDetailPageShwon .toggle()
                        }))
                        .sensoryFeedback(.success, trigger: isDetailPageShwon)
                }
            }
            .searchable(text: $search)
            .navigationTitle("Discover")
            .toolbar {
                Button {
                    isShowFilter = true
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                        .foregroundColor(.orange)
                }
            }
            .sheet(isPresented: $isShowFilter, content: {
                FilterView()
            })

        }
    }
}

#Preview {
    ContentView()
}
