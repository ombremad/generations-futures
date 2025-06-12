//
//  AnnonceCardSmall.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct AnnonceCardSmall: View {
    
    var titre: String = defaultTitre
    var thematique: String = defaultThematique
    var name: String = defaultName
    var illustration: ImageResource = defaultIllustration
    var isAuthor: Bool = false
    
    var body: some View {
            ZStack {
                Rectangle()
                    .fill(Color("AlmostWhite"))
                HStack {
                    Image(illustration)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 118)
                        .clipped()
                    Spacer()
                    HStack {
                        VStack(alignment:.leading) {
                            Text(titre)
                                .font(Font.custom("Poppins-Medium", size: 14))
                                .lineLimit(2)
                            if !isAuthor {
                                Text("Avec \(name)")
                                    .font(Font.custom("Poppins-Medium", size: 10))
                                    .lineLimit(1)
                            }
                        }
                        Spacer()
                        Text(thematique)
                            .font(Font.custom("Poppins-Regular", size: 10))
                        Image(systemName: "chevron.right")
                    }
                    .padding(.trailing, 12)
                }
            }
            .foregroundStyle(Color("Grey-900"))
            .frame(height: 65)
            .clipped()
            .cornerRadius(cornerRadiusSmall)
            .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)

    }
}

#Preview {
    AnnonceCardSmall()
}
