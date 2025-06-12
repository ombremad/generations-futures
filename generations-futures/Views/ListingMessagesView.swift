//
//  ListingMessagesView.swift
//  generations-futures
//
//  Created by Anne Ferret on 11/06/2025.
//

import SwiftUI

struct ListingMessagesView: View {
    
    func header() -> some View {
        VStack {
            Text("Messages")
        }
    }
    func listing() -> some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach (listingMessages, id: \.self) { message in
                    SingleMessageListing(titre: message.titre, name: message.name, surname: message.surname, preview: message.preview, profilePicture: message.profilePicture, isRead: message.isRead)
                }
            }
        }
    }

    var body: some View {
        NavigationStack {
            VStack {
                header()
                NavigationLink(destination: MessagingDetailView()) {
                    listing()
                }
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
        }
    }
}

#Preview {
    ListingMessagesView()
}
