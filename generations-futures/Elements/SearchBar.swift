//
//  SearchBar.swift
//  generations-futures
//
//  Created by Anne Ferret on 04/06/2025.
//

import SwiftUI

struct SearchBar: View {
    
    var textSearchBar: String = "Rechercher une expérience..."
    
    var body: some View {
        
        HStack {
            ZStack {
                Rectangle()
                    .fill(Color("Grey-50"))
                HStack {
                    Text(textSearchBar)
                        .foregroundColor(Color("Grey-300"))
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .padding()
                    Spacer()
                }
            }
            .frame(maxHeight: 35)
            .cornerRadius(cornerRadiusBig)
            
            Spacer(minLength: 16)
            
            ZStack {
                Circle()
                    .fill(Color("Red-500"))
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color("Grey-50"))
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
        }
        .frame(maxHeight: 35)
        .clipped()
    }
}

#Preview {
    SearchBar()
}
