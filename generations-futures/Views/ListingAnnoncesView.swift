//
//  ListingAnnoncesView.swift
//  generations-futures
//
//  Created by Anne Ferret on 04/06/2025.
//

import SwiftUI

struct ListingAnnoncesView: View {
    var body: some View {
        ScrollView {
                        
            VStack {
                
                SearchBar()
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 0) {
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
                .frame(height: 90)
                
                SimpleSectionTitle(title: "Annonces près de vous")
                .padding(.horizontal)
                                                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 24) {
                        AnnonceCardBig()
                        AnnonceCardBig(
                            titre: "Un café et parler",
                            thematique: "Discussion",
                            name: "Jean-Paul",
                            lieu: "Roubaix",
                            illustration: "samples/coffee"
                        )
                        AnnonceCardBig(
                            titre: "Le nouveau Avatar !",
                            thematique: "Sorties",
                            name: "Béatrice",
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
                
                SimpleSectionTitle(title: "Posté récemment")
                .padding(.horizontal)
                
                VStack(spacing:18) {
                    AnnonceCardSmall()
                    AnnonceCardSmall(
                        titre: "Un café et parler",
                        thematique: "Discussion",
                        name: "Jean-Paul",
                        illustration: "samples/coffee"
                    )
                    AnnonceCardSmall(
                        titre: "Le nouveau Avatar !",
                        thematique: "Sorties",
                        name: "Béatrice",
                        illustration: "samples/cinema"
                    )
                }
                .padding(.horizontal)
                                
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
        }
    }
}

#Preview {
    ListingAnnoncesView()
}
