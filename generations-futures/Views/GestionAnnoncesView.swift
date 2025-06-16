//
//  GestionAnnoncesView.swift
//  generations-futures
//
//  Created by Anne Ferret on 12/06/2025.
//

import SwiftUI

struct GestionAnnoncesView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var viewModel = AnnoncesViewModel()
    
    func newAnnonceButton() -> some View {
        NavigationLink(destination: Questionnaire_View_1()) {
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
    }
    func annoncesHistory() -> some View {
        VStack {
            SimpleSectionTitle(title: "Posté récemment")
                .padding(.horizontal)
        
        NavigationLink(destination: AnnonceDetailView()) {
            VStack(spacing:24) {
                ForEach(viewModel.annonceList, id:\.self) { annonce in
                        AnnonceCardSmall(
                            titre: annonce.titre,
                            thematique: annonce.thematique.label,
                            name: annonce.author.name,
                            illustration: annonce.illustration,
                            isAuthor: true
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
                //                Button("test :)") {
                //                    viewModel.createNewEvent()
                //                }
                VStack(spacing:20) {
                    newAnnonceButton()
                    annoncesHistory()
                }
                
            }
            .font(Font.custom("Poppins-Regular", size: 12))
            .foregroundStyle(Color("Grey-900"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Gestion des annonces")
                }
                ToolbarItem(placement:.topBarLeading) {
                    Button { dismiss() } label: {
                        BackButton()
                    }
                }
            }
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundStyle(Color("Grey-900"))
        }.environment(viewModel)
    }
}

#Preview {
    GestionAnnoncesView()
}
