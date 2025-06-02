//
//  AnnonceCardSmall.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct AnnonceCardSmall: View {
    
    var body: some View {
            ZStack {
                Rectangle()
                    .fill(Color("Colors/White"))
                HStack {
                    Image(annonceImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 118)
                        .clipped()
                    Spacer()
                    HStack {
                        VStack(alignment:.leading) {
                            Text(annonceTitre)
                                .font(Font.custom("Poppins-Medium", size: 14))
                            Text("Avec \(annonceAuteur)")
                                .font(Font.custom("Poppins-Medium", size: 10))
                        }
                        Spacer()
                        Text(annonceTheme)
                            .font(Font.custom("Poppins-Regular", size: 10))
                        Image(systemName: "chevron.right")
                    }
                    .padding(.trailing, 12)
                }
            }
            .foregroundStyle(Color("Colors/Black"))
            .frame(height: 65)
            .clipped()
            .cornerRadius(cornerRadiusSmall)
            .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)

    }
}

#Preview {
    AnnonceCardSmall()
}
