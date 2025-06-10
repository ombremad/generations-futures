//
//  HobbyBadge.swift
//  generations-futures
//
//  Created by Noa Cengarle on 06/06/2025.
//

import SwiftUI

struct HobbyBadge: View {
    
    var hobby: String = defautHobby
    var highlighted: Bool = false
    
    var body: some View {
        Image(systemName: hobby)
            .font(.system(size: 32, weight: .bold))
            .foregroundStyle(highlighted ? .accent : .grey100)
            .padding()
            .frame(width: 80, height: 80)
            .background(RoundedRectangle(cornerRadius: 50).stroke((highlighted ? .accent : .grey100), lineWidth: 8))
            .padding(.horizontal, 5)
    }
}

#Preview {
    HobbyBadge()
}
