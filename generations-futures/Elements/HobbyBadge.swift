//
//  HobbyBadge.swift
//  generations-futures
//
//  Created by Noa Cengarle on 06/06/2025.
//

import SwiftUI

struct HobbyBadge: View {
    var iconName: String = defautHobby
    
    var body: some View {
        Image(systemName: iconName)
            .font(.system(size: 32, weight: .bold))
            .foregroundStyle(.grey100)
            .padding()
            .frame(width: 80, height: 80)
            .background(RoundedRectangle(cornerRadius: 50).stroke((.grey100), lineWidth: 8))
            .padding(.horizontal, 5)
    }
}

#Preview {
    HobbyBadge()
}
