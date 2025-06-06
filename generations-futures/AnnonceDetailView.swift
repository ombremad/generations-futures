//
//  AnnonceDetailView.swift
//  generations-futures
//
//  Created by Apprenant156 on 06/06/2025.
//

import SwiftUI

struct AnnonceDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                // Image d’en-tête
                Image(.Samples.coktail)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .overlay(
                        VStack {
                            HStack {
                                Button(action: {
                                    // Action retour
                                }) {
                                    Image(systemName: "chevron.left")
                                        .padding()
                                        .background(Color.white.opacity(0.7))
                                        .clipShape(Circle())
                                }
                                Spacer()
                                Button(action: {
                                    // Action partage
                                }) {
                                    Image(systemName: "square.and.arrow.up")
                                        .padding()
                                        .background(Color.white.opacity(0.7))
                                        .clipShape(Circle())
                                }
                            }
                            .padding()
                            Spacer()
                        }
                    )

                // Titre et lieu
                VStack(alignment: .leading, spacing: 4) {
                    Text("Boire un verre en début de soirée")
                        .font(.title2)
                        .bold()
                    Text("Lyon, France")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)

                // Description
                VStack(alignment: .leading, spacing: 8) {
                    Text("Description")
                        .font(.headline)
                    Text("""
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra.
                    """)
                        .font(.body)
                        .foregroundColor(.secondary)
                    
                    Label("Robert", systemImage: "person.fill")
                        .padding(8)
                        .background(Color.green.opacity(0.1))
                        .cornerRadius(8)
                }
                .padding(.horizontal)

                // Localisation (ex. carte statique)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Localisation")
                        .font(.headline)
                    Image("samples/map")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(radius: 2)
                }
                .padding(.horizontal)

                // Disponibilités
                VStack(alignment: .leading, spacing: 8) {
                    Text("Disponibilités")
                        .font(.headline)
                    Image("samples/calendar") // Ou intègre un vrai calendrier si tu le souhaites
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }
                .padding(.horizontal)

                // Auteur en bas
                HStack {
                    Image("samples/user") // Photo de profil
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Robert")
                            .bold()
                        Text("“ Très grand fan de Caipirinha ”")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.horizontal)

                // Bouton message
                SimpleButton(content: "Message", highlighted: true)
                    .padding()

            }
        }
        .font(Font.custom("Poppins-Regular", size: 14))
    }
}

#Preview {
    AnnonceDetailView()
}
