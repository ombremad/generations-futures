//
//  AnnonceCardBig.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct AnnonceCardBig: View {
    
    var titre: String = defaultTitre
    var thematique: String = defaultThematique
    var name: String = defaultName
    var lieu: String = defaultLieu
    var illustration: ImageResource = defaultIllustration
    
    var body: some View {
        
            ZStack {
                Rectangle()
                    .fill(Color("AlmostWhite"))
                VStack {
                    Image(illustration)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height:220)
                        .clipped()
                    VStack(alignment:.leading) {
                        Text(titre)
                            .font(Font.custom("Poppins-Medium", size: 14))
                        HStack(alignment:.bottom) {
                            VStack(alignment:.leading) {
                                Text(thematique)
                                    .font(Font.custom("Poppins-Regular", size: 10))
                                Text("Avec \(name)")
                                    .font(Font.custom("Poppins-Medium", size: 10))
                            }
                            Spacer()
                            Text(lieu)
                                .font(Font.custom("Poppins-Medium", size: 12))
                                .lineLimit(1)
                        }
                    }
                    .foregroundStyle(Color("Grey-900"))
                    .padding(.horizontal, 12)
                    .padding(.bottom, 12)

                }
            }
            .frame(width: 200, height: 280)
            .clipped()
            .cornerRadius(cornerRadiusSmall)
            .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)
        
    }
}

#Preview {
    AnnonceCardBig()
}
