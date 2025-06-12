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
    
    // créer des varible pour chacune de mes étapes pour créer une nouvelle annonce que j'ajoute à la liste , au dessus var :annonceList
    var title = ""
    var theme: Theme?
    
    func createNewEvent() {
        annonceList.append(Annonce(titre: "Test", description: ":)", illustration: .beatrice, thematique: .init(icon: "pencil", label: "Stylo :)"), author: profiles.first!))
    }
    
    
}
