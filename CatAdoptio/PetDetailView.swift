//
//  PetDetailView.swift
//  CatAdoptio
//
//  Created by Azalia Amanda on 24/03/25.
//

import SwiftUI

struct PetDetailView: View {
    var pet: Pet
    @State private var isLike: Bool = false
    
    var body: some View {
        VStack () {
            Image(pet.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(alignment: .bottomTrailing) {
                    Button {
                        if (isLike) { isLike = false } else { isLike = true }
                    } label: {
                        Image (systemName: isLike ? "heart.fill" : "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.red)
                            .frame(width: 40, height: 40)
                    }
                }
            
            
            Text(pet.name)
                .font(.largeTitle)
                .bold()
            
            Text(pet.catType)
                .font(.title)
                .foregroundColor(.gray)
            
            HStack(alignment: .top) {
                HStack {
                    Image(systemName: "mappin.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.orange)
                        .frame(width: 14, height: 14)
                    Text("\(pet.location) km")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                }
                HStack {
                    Image(systemName: "scalemass.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.orange)
                        .frame(width: 14, height: 14)
                    Text("\(pet.weight) kg")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                }
                HStack {
                    Image(systemName: "pawprint.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.orange)
                        .frame(width: 14, height: 14)
                    Text(pet.gender)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                }
            }
            
            Divider().padding(.top)
            
            VStack {
                Text("About \(pet.name)")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                
                Text("lorem ipsum Dolor sit Amet")
                    .font(.caption)
                
            }
            
            Spacer()
        }
    }
}

#Preview {
    PetDetailView(pet: Pet.all[0])
}
