//
//  SimpleSectionTitle.swift
//  generations-futures
//
//  Created by Anne Ferret on 04/06/2025.
//

import SwiftUI

struct SimpleSectionTitle: View {
    
    var title: String = "Titre de la section"
    
    var body: some View {
        
        HStack {
            Text(title)
                .font(Font.custom("Poppins-SemiBold", size: 14))
            Image(systemName: "chevron.right")
                .fontWeight(.semibold)
            Spacer()
        }
    }
}

#Preview {
    SimpleSectionTitle()
}
