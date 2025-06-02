//
//  AnnonceCardBig.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct AnnonceCardBig: View {
    
    var body: some View {
        
            ZStack {
                Rectangle()
                    .fill(Color("Colors/White"))
                VStack {
                    Image(annonceImage)
                        .resizable()
                        .scaledToFill()
                        .frame(height:220)
                        .clipped()
                    HStack(alignment:.top) {
                        VStack(alignment:.leading) {
                            Text(annonceTitre)
                                .font(Font.custom("Poppins-Medium", size: 14))
                            Text(annonceTheme)
                                .font(Font.custom("Poppins-Regular", size: 10))
                            Text("Avec \(annonceAuteur)")
                                .font(Font.custom("Poppins-Medium", size: 10))
                        }
                        Spacer()
                        Text(annonceLieu)
                            .font(Font.custom("Poppins-Medium", size: 12))
                    }
                    .foregroundStyle(Color("Colors/Black"))
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
