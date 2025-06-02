//
//  SimpleButton.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct SimpleButton: View {
    
    var content: String = "Bouton"
    var background: Color = Color("Colors/Red-500")
    
    var body: some View {

        Button(action: {}, label: {
            Text(content)
                .font(Font.custom("Poppins-Regular", size: 12))
                .foregroundStyle(Color("Colors/Grey-50"))
                .frame(maxWidth: 256)
        })
        .padding()
        .background(background)
        .cornerRadius(cornerRadiusBig)
        .shadow(color: Color("Colors/Grey-300"), radius: shadowAmount, x: 0, y: 4)
        
    }
}

#Preview {
    SimpleButton()
}
