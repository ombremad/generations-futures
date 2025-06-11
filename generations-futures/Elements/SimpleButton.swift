//
//  SimpleButton.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct SimpleButton: View {
    
    var content: String = "Bouton"
    var highlighted: Bool = false
    var action: () -> Void = {}
    
    var body: some View {

        Button(action: {}, label: {
            Text(content)
                .frame(maxWidth: 256)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: cornerRadiusBig)
                        .fill(highlighted ? Color("Red-500") : Color("Grey-500"))
                }
                .font(Font.custom("Poppins-Regular", size: 12))
                .foregroundStyle(Color("Grey-50"))
                .contentShape(Rectangle())
        })
        .shadow(color: Color("Grey-300"), radius: shadowAmount, x: 0, y: 4)
        
    }
}

#Preview {
    SimpleButton()
}
