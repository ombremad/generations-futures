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
    var title = "Boire un verre en après-midi"
    var theme: Theme = Theme(title: thematics[1].title, image: thematics[1].image,isSelected: true)
    var picture = "coktail"
    var description = "Retrouvons nous dans l'après-midi pour discuter autour d'un verre ou d'une tasse.\nParler de tout et de rien, se tenir compagnie pour une jolie journée ensoleillée."
    var location = "Lyon"
    var preciseDate : String = Date.now.formatted(date: .long, time: .shortened)
    var startingDateRangeSelected : String = Date.now.formatted(date: .abbreviated, time: .omitted)
    var endingDateSelected : String = Date.now.formatted(date: .abbreviated, time: .omitted)
    
    
    func createNewEvent() {
        //        annonceList.append(Annonce(titre: "Test", description: ":)", illustration: .beatrice, thematique: .init(icon: "pencil", label: "Stylo :)"), author: profiles.first!))
        //        annonceList.append(Annonce(titre: <#T##String#>, description: <#T##String#>, illustration: <#T##ImageResource#>, thematique: <#T##Hobby#>, author: <#T##Profile#>)
    }
    
    var isHiden = false
    
    var towns : [String] = ["Paris", "Lille", "Madrid"]

    
}
