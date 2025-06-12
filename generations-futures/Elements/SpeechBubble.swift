//
//  SpeechBubble.swift
//  generations-futures
//
//  Created by Anne Ferret on 10/06/2025.
//

import SwiftUI

struct SpeechBubble: View {
    
    var message: String = "Bonjour, ça va toi ? Moi ça va pas mal aujourd'hui"
    var isSender: Bool = true
    
    var body: some View {
        
        HStack {
            if isSender { Spacer() }
            Text(message)
                .padding(.horizontal)
                .padding(.vertical, 8)
                .font(Font.custom("Poppins-Regular", size: 12))
                .foregroundStyle(isSender ? Color("Grey-50") : Color("Grey-900"))
                .background(isSender ? Color("Red-500") : Color("Grey-50"))
                .multilineTextAlignment(.leading)
                .cornerRadius(cornerRadiusSmall)
                .frame(maxWidth: 300, alignment: (isSender ? .trailing : .leading))
                .shadow(color: Color("Grey-100"), radius: shadowAmount, x: 0, y: 4)
            if !isSender { Spacer() }
        }
        .padding(.bottom, 5)
    }
}

#Preview {
    SpeechBubble()
}
