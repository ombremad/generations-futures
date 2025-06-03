//
//  DemoView.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

struct DemoView: View {
    var body: some View {
        ScrollView {
            
            VStack (spacing: 18) {
                
                Text("Quelques éléments réutilisables...")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 0) {
                        SimpleBadge(
                            thematique: "Filtres",
                            badge: "rectangle.stack",
                            background: Color("Red-500"),
                            foreground: Color("Grey-50")
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
                .clipped()
                                                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 24) {
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
                    .padding()
                }
                
                VStack (spacing:18) {
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
                .padding()
                
                SimpleButton(
                    content:"Message"
                )
                
                SimpleButton(
                    content:"Élément de menu",
                    background: Color("Grey-500")
                )
                
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
        }
    }
}

#Preview {
    DemoView()
}
