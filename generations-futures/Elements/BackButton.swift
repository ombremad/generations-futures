//
//  BackButton.swift
//  generations-futures
//
//  Created by Anne Ferret on 13/06/2025.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color("Grey-50"))
                .frame(width:44, height: 44)
            Image(systemName: "chevron.left")
                .foregroundStyle(Color("Grey-500"))
        }
    }
}

#Preview {
    BackButton()
}
