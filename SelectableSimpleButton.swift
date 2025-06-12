//
//  SelectableSimpleButton.swift
//  generations-futures
//
//  Created by Apprenant156 on 10/06/2025.
//

import SwiftUI

struct SelectableSimpleButton: View {
    
    var content: String = "Bouton"
    
    @State private var isSelected: Bool = false
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }, label: {
            Text(content)
                .frame(maxWidth: 256)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: cornerRadiusBig)
                        .fill(isSelected ? Color.accentColor : Color("Grey-500"))
                }
                .font(Font.custom("Poppins-Regular", size: 12))
                .foregroundStyle(Color("Grey-50"))
                .contentShape(Rectangle())
        })
        .shadow(color: Color("Grey-300"), radius: shadowAmount, x: 0, y: 4)
    }
}
