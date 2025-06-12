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
    
    var newEvent: Annonce?
    
    func createNewEvent() {
        annonceList.append(Annonce(titre: "Test", description: ":)", illustration: .beatrice, thematique: .init(icon: "pencil", label: "Stylo :)"), author: profiles.first!))
    }
}
