//
//  ListingAnnoncesView.swift
//  generations-futures
//
//  Created by Anne Ferret on 04/06/2025.
//

import SwiftUI

struct ListingAnnoncesView: View {
    
    func annoncesFilters() -> some View {
        VStack {
            SearchBar()
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top, spacing: 0) {
                    SimpleBadge(
                        thematique: "Filtres",
                        badge: "rectangle.stack",
                        highlighted: true
                    )
                    ForEach(hobbies, id:\.self) { hobby in
                        SimpleBadge(
                            thematique: hobby.label,
                            badge: hobby.icon
                        )
                    }
                }
            }
            .frame(height: 90)
        }
    }
    func annoncesReco() -> some View {
        VStack {
            SimpleSectionTitle(title: "Annonces près de vous")
                .padding(.horizontal)
            
            NavigationLink(destination: AnnonceDetailView()) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 30) {
                        ForEach(annonces, id:\.self) { annonce in
                            AnnonceCardBig(
                                titre: annonce.titre,
                                thematique: annonce.thematique.label,
                                name: annonce.author.name,
                                lieu: annonce.author.lieu,
                                illustration: annonce.illustration
                            )
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 15)
                }
            }
        }
    }
    func annoncesRecent() -> some View {
        VStack {
            SimpleSectionTitle(title: "Posté récemment")
                .padding(.horizontal)
        
        VStack(spacing:24) {
            
            ForEach(annonces, id:\.self) { annonce in
                NavigationLink(destination: AnnonceDetailView()) {
                    AnnonceCardSmall(
                        titre: annonce.titre,
                        thematique: annonce.thematique.label,
                        name: annonce.author.name,
                        illustration: annonce.illustration
                    )
                }
            }
        }
        .padding(.horizontal)
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing:20) {
                    annoncesFilters()
                    annoncesReco()
                    annoncesRecent()
                }
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Annonces")
                }
                ToolbarItem(placement:.topBarTrailing) {
                    NavigationLink(destination: GestionAnnoncesView()) {
                        Image(systemName: "list.dash")
                            .foregroundStyle(Color("Grey-500"))
                            .fontWeight(.bold)
                    }
                }
            }
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundStyle(Color("Grey-900"))
        }
    }
}

#Preview {
    ListingAnnoncesView()
}
