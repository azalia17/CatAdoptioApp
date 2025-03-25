//
//  FilterView.swift
//  CatAdoptio
//
//  Created by Azalia Amanda on 24/03/25.
//

import SwiftUI

struct FilterView: View {
    
    @State private var weight = 0.0
    @State private var isEditing = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Text("Filters")
                    .font(.largeTitle)
                    .padding(.top)
            }
            .frame(maxWidth: .infinity)
            
            Group {
                FilterButton(segmentTitle: "Breed",itemTitle: ["Persian","Domestic"])
                FilterButton(segmentTitle: "Gender",itemTitle: ["Male","Female"])
                FilterButton(segmentTitle: "Age", itemTitle: ["Baby","Young"])
                FilterButton(segmentTitle: "Pedigree", itemTitle: ["Yes","No"])
                
                // Add more buttons as necessary
                VStack(alignment: .leading) {
                    HStack{
                        Text("Weight")
                            .font(.headline)
                        Text(String(format: "%.1f kg", weight))
                            .foregroundColor(.gray)
                    }
                    Slider(
                        value: $weight,
                        in: 0...20
                    ){
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("20")
                    }
                    .tint(.orange)
                    
                }.padding(.horizontal)
            }
            .padding(.top, 12)
            .padding(.horizontal)
            
            VStack {
                Spacer()
                Text("Total: 0 filters applied")
                    .font(.headline)
                
                Button(action: {
                    
                }) {
                    Text("Apply")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 16)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }
}

struct FilterButton: View {
    var segmentTitle: String
    var itemTitle: [String]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(segmentTitle)
                .font(.headline)
            HStack{
                ForEach(0 ..< itemTitle.count){ index in
                    Button(action: {
                        
                    }) {
                        Text(itemTitle[index])
                            .padding(12)
                            .background(Color.gray.opacity(0.1))
                            .foregroundColor(.primary)
                            .cornerRadius(8)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview{
    FilterView()
}
