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
            
            VStack (spacing: 18){
                
                Text("Quelques éléments réutilisables...")
                
                SimpleButton(content:"Message")
                
                SimpleButton(content:"Élément de menu", background: Color("Grey-500"))
                                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 24) {
                        AnnonceCardBig()
                        AnnonceCardBig(titre: "Un café et parler", thematique: "Discussion", auteur: "Jean-Paul", lieu: "Roubaix", illustration: "samples/coffee")
                        AnnonceCardBig(titre: "Le nouveau Avatar !", thematique: "Sorties", auteur: "Béatrice", lieu: "Marseille", illustration: "samples/cinema")
                        AnnonceCardBig()
                        AnnonceCardBig()
                        AnnonceCardBig()
                    }
                    .padding()
                }
                
                VStack (spacing:18) {
                    AnnonceCardSmall()
                    AnnonceCardSmall(titre: "Un café et parler", thematique: "Discussion", auteur: "Jean-Paul", illustration: "samples/coffee")
                    AnnonceCardSmall(titre: "Le nouveau Avatar !", thematique: "Sorties", auteur: "Béatrice", illustration: "samples/cinema")
                    AnnonceCardSmall()
                    AnnonceCardSmall()
                    AnnonceCardSmall()
                }
                .padding()
                
            }
            .font(Font.custom("Poppins-Regular", size: 12))
        }
    }
}

#Preview {
    DemoView()
}
