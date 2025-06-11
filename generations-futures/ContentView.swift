//
//  ContentView.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: ListingAnnoncesView()) {
                    Text("ListingAnnoncesView")
                }
                NavigationLink(destination: ListingMessagesView()) {
                    Text("ListingMessagesView")
                }
                NavigationLink(destination: MessagingDetailView()) {
                    Text("MessagingDetailView")
                }
                NavigationLink(destination: ProfilEditionView()) {
                    Text("ProfilEditionView")
                }
                NavigationLink(destination: ProfilView()) {
                    Text("ProfilView")
                }
                NavigationLink(destination: Questionaire_View_1()) {
                    Text("Questionaire_View_1")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
