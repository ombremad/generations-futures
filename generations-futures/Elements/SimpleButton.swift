//
//  SimpleButton.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct SimpleButton: View {
    
    var body: some View {

        Button(action: {}, label: {
            Text("Bouton")
                .font(Font.custom("Poppins-Regular", size: 12))
                .foregroundStyle(Color("Colors/Grey-50"))
                .frame(maxWidth: 256)
        })
        .padding()
        .background(Color("Colors/Red-500"))
        .cornerRadius(cornerRadiusBig)
        .shadow(color: Color("Colors/Grey-300"), radius: shadowAmount, x: 0, y: 4)
        
    }
}

#Preview {
    SimpleButton()
}
