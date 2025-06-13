//
//  AnnoncesViewModel.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import Foundation
import DeveloperToolsSupport

@Observable
class AnnoncesViewModel {
    
    var annonceList = annonces
    
    // créer des variables pour chacune de mes étapes, afin de créer une nouvelle annonce que j'ajouterai à la liste des annonces GestionsAnnonces(), au dessus var :annonceList
    var title = ""
    var theme: Theme?
    var image = ""
    var description = ""
    var location = ""
    var preciseDate : Date?
    var startingDateRangeSelected : Date?
    var endingDateSelected : Date?

    
    func createNewEvent() {
        //        annonceList.append(Annonce(titre: "Test", description: ":)", illustration: .beatrice, thematique: .init(icon: "pencil", label: "Stylo :)"), author: profiles.first!))
        //        annonceList.append(Annonce(titre: <#T##String#>, description: <#T##String#>, illustration: <#T##ImageResource#>, thematique: <#T##Hobby#>, author: <#T##Profile#>)
    }
    
    var isHiden = false
    
}
