//
//  TabBarView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 11/06/2025.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Annonces", systemImage: "newspaper.fill") {
                ListingAnnoncesView()
            }
            
            Tab("Messagerie", systemImage: "message.fill") {
                ListingMessagesView()
            }
            
            Tab("Mon profil", systemImage: "person.fill") {
                ProfilView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
