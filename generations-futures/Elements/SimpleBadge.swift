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
    var background: Color = Color("Grey-50")
    var foreground: Color = Color("Grey-700")
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(background)
                Image(systemName: badge)
                    .foregroundStyle(foreground)
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
    }
}

#Preview {
    SimpleBadge()
}
