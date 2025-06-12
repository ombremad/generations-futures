//
//  GestionAnnoncesView.swift
//  generations-futures
//
//  Created by Anne Ferret on 12/06/2025.
//

import SwiftUI

struct GestionAnnoncesView: View {
    
    func newAnnonceButton() -> some View {
        VStack {
            Image(systemName: "plus")
                   .font(.system(size: 33))
                   .foregroundStyle(.almostWhite)
                   .padding(20)
                   .background{
                       Circle()
                           .fill(Color("Red-500"))
                   }
            Text("Créez votre annonce\nen quelques secondes !")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
    
    func annoncesHistory() -> some View {
        VStack {
            SimpleSectionTitle(title: "Posté récemment")
                .padding(.horizontal)
        
        VStack(spacing:24) {
            NavigationLink(destination: AnnonceDetailView()) {
                AnnonceCardSmall(
                    isAuthor: true
                )
            }
            
            NavigationLink(destination: AnnonceDetailView()) {
                AnnonceCardSmall(
                    titre: "Un café et parler",
                    thematique: "Discussion",
                    name: "Jean-Paul",
                    illustration: "samples/coffee",
                    isAuthor: true
                )
            }
            
            NavigationLink(destination: AnnonceDetailView()) {
                AnnonceCardSmall(
                    titre: "Le nouveau Avatar !",
                    thematique: "Sorties",
                    name: "Béatrice",
                    illustration: "samples/cinema",
                    isAuthor: true
                )
            }
        }
        .padding(.horizontal)
        }
    }
    
    var body: some View {
            ScrollView {
                
                HStack {
                    Text("Gestion des annonces")
                }
                .font(Font.custom("Poppins-Regular", size: 16))
                .foregroundStyle(Color("Grey-900"))
                
                VStack(spacing:20) {
                    newAnnonceButton()
                    annoncesHistory()
                }
                
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
    }
}

#Preview {
    GestionAnnoncesView()
}
