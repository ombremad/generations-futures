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
                
                SimpleButton(content:"Élément de menu", background: Color("Colors/Grey-500"))
                                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 24) {
                        AnnonceCardBig()
                        AnnonceCardBig()
                        AnnonceCardBig()
                        AnnonceCardBig()
                        AnnonceCardBig()
                        AnnonceCardBig()
                    }
                    .padding()
                }
                
                VStack (spacing:18) {
                    AnnonceCardSmall()
                    AnnonceCardSmall()
                    AnnonceCardSmall()
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
