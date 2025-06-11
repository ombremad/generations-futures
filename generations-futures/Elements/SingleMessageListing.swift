//
//  SingleMessageListing.swift
//  generations-futures
//
//  Created by Anne Ferret on 11/06/2025.
//

import SwiftUI

struct SingleMessageListing: View {
    
    var titre: String = defaultTitre
    var name: String = defaultName
    var surname: String = defaultSurname
    var preview: String = "Salut !"
    var profilePicture: ImageResource = defaultProfilePicture
    var isRead: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack {
                    Image(profilePicture)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 56, height: 56)
                    VStack(alignment: .leading) {
                        Text("\(name) \(surname)")
                        Text("« \(preview) »")
                            .font(isRead ? Font.custom("Poppins-Regular", size: 14) : Font.custom("Poppins-SemiBold", size: 14))
                            .lineLimit(1)
                    }
                    Spacer()
                    Text("\(titre)")
                        .lineLimit(1)
                    Image(systemName: "chevron.right")
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
            .background(isRead ? Color("AlmostWhite") : Color("Red-50"))
        }
        Rectangle()
            .fill(Color("Grey-50"))
            .frame(height: 1)
    }
}

#Preview {
    SingleMessageListing()
}
