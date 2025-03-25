//
//  PetCard.swift
//  CatAdoptio
//
//  Created by Azalia Amanda on 24/03/25.
//

import SwiftUI

struct PetCard: View {
    
//    var name: String
//    var image: String
//    var catType: String
    
    var pet: Pet
    
    @State private var isLike: Bool = false
    
    var body: some View {
        HStack {
            Image(pet.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            VStack(alignment: .leading)  {
                HStack {
                    Text(pet.name)
                        .font(.headline)
                        .italic()
                    
                    Spacer()
                    
                    Button {
                        if (isLike) { isLike = false } else { isLike = true }
                    } label: {
                        Image (systemName: isLike ? "heart.fill" : "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                    }
                }
                Text(pet.catType)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack(alignment: .top) {
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.orange)
                            .frame(width: 14, height: 14)
                        Text("\(pet.location) km")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Image(systemName: "scalemass.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.orange)
                            .frame(width: 14, height: 14)
                        Text("\(pet.weight) kg")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Image(systemName: "pawprint.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.orange)
                            .frame(width: 14, height: 14)
                        Text(pet.gender)
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    PetCard(pet: Pet.all[0])
}
