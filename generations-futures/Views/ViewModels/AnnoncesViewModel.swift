//
//  AnnoncesViewModel.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import Foundation

@Observable
class AnnoncesViewModel {
    
    var annonceList = annonces
    
    // créer des variables pour chacune de mes étapes, afin de créer une nouvelle annonce que j'ajouterai à la liste des annonces GestionsAnnonces(), au dessus var :annonceList
    var title = ""
    var theme: Theme?
    var image = ""
    
    func createNewEvent() {
        annonceList.append(Annonce(titre: "Test", description: ":)", illustration: .beatrice, thematique: .init(icon: "pencil", label: "Stylo :)"), author: profiles.first!))
    }
    
    
}
