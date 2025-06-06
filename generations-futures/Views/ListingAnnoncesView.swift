//
//  ListingAnnoncesView.swift
//  generations-futures
//
//  Created by Anne Ferret on 04/06/2025.
//

import SwiftUI

struct ListingAnnoncesView: View {
    
    func header() -> some View {
        VStack {
            
            HStack {
                Text("Annonces")
            }
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundStyle(Color("Grey-900"))
            
            SearchBar()
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top, spacing: 0) {
                    SimpleBadge(
                        thematique: "Filtres",
                        badge: "rectangle.stack",
                        highlighted: true
                    )
                    SimpleBadge(
                        thematique: "Un thème avec un nom plus long",
                        badge: "popcorn.fill"
                    )
                    SimpleBadge()
                    SimpleBadge()
                    SimpleBadge()
                    SimpleBadge()
                    SimpleBadge()
                    SimpleBadge()
                }
            }
            .frame(height: 100)
        }
    }
    func annoncesReco() -> some View {
        VStack {
            SimpleSectionTitle(title: "Annonces près de vous")
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 30) {
                    AnnonceCardBig()
                    AnnonceCardBig(
                        titre: "Un café et parler",
                        thematique: "Discussion",
                        auteur: "Jean-Paul",
                        lieu: "Roubaix",
                        illustration: "samples/coffee"
                    )
                    AnnonceCardBig(
                        titre: "Le nouveau Avatar !",
                        thematique: "Sorties",
                        auteur: "Béatrice",
                        lieu: "Marseille",
                        illustration: "samples/cinema"
                    )
                    AnnonceCardBig()
                    AnnonceCardBig()
                    AnnonceCardBig()
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
        }
    }
    func annoncesRecent() -> some View {
        VStack {
            SimpleSectionTitle(title: "Posté récemment")
                .padding(.horizontal)
        
        VStack(spacing:24) {
            AnnonceCardSmall()
            AnnonceCardSmall(
                titre: "Un café et parler",
                thematique: "Discussion",
                auteur: "Jean-Paul",
                illustration: "samples/coffee"
            )
            AnnonceCardSmall(
                titre: "Le nouveau Avatar !",
                thematique: "Sorties",
                auteur: "Béatrice",
                illustration: "samples/cinema"
            )
        }
        .padding(.horizontal)
        }
    }
    
    
    var body: some View {
        ScrollView {
            
            header()
            VStack(spacing:20) {
                annoncesReco()
                annoncesRecent()
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
        }
    }
}

#Preview {
    ListingAnnoncesView()
}
