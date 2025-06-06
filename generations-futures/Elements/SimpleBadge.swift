//
//  SimpleBadge.swift
//  generations-futures
//
//  Created by Anne Ferret on 03/06/2025.
//


import SwiftUI

struct SimpleBadge: View {
    
    var thematique: String = defaultThematique
    var badge: String = defaultBadge
    var highlighted: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(highlighted ? Color("Red-500") : Color("Grey-50"))
                Image(systemName: badge)
                    .foregroundStyle(highlighted ? Color("Grey-50") : Color("Grey-700"))
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
            }
            .frame(width: 44, height: 44)
            Text(thematique)
                .foregroundStyle(Color("Grey-700"))
                .font(Font.custom("Poppins-Regular", size: 11))
                .lineLimit(2)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .frame(width: 90, height: 90)
        
        // Ceci est un commentaire
    }
}

#Preview {
    SimpleBadge()
}
