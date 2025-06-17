//
//  AnnoncesViewModel.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import Foundation
import DeveloperToolsSupport
import SwiftUICore

@Observable
class AnnoncesViewModel: Identifiable { 
    let id: UUID = UUID()
    // afin de regrouper la base do donnée des autres DefaultValues avec celles créees ici
    var annonceList = annonces
    
    // créer des variables pour chacune de mes étapes, afin de créer une nouvelle annonce que j'ajouterai à la liste des annonces GestionsAnnonces(), au dessus var :annonceList
    var title = "Un café et parler"
    var theme: Theme = Theme(title: thematics[1].title, image: thematics[1].image,isSelected: false)
    var picture: ImageResource = .Samples.coffee
    var description = "Retrouvons nous dans l'après-midi pour discuter autour d'un verre ou d'une tasse.\nParler de tout et de rien, se tenir compagnie pour une jolie journée ensoleillée."
    var location = "Lyon, France"
    var preciseDate : String = Date.now.formatted(date: .long, time: .shortened)
    var startingDateRangeSelected : String = Date.now.formatted(date: .abbreviated, time: .omitted)
    var endingDateSelected : String = Date.now.formatted(date: .abbreviated, time: .omitted)
    
    // fonction pour ajouter un nouvel évènement dans l'écran d'accueil
    func createNewEvent() {
        annonceList.append(Annonce(titre: title, description: description, illustration: picture, thematique: Hobby(icon: "Café", label: "cup.and.heat.waves"), author: profiles[0]))
    }
     // pour la partie map du questionnaire - Questionnaire_View_5
    var towns : [String] = ["Paris", "Lille", "Madrid"]
    
    // Ville de Paris
    var latitude : Double = 48.8566
    var longitude : Double = 2.3522
    
    // Ville de Lyon
//    var latitude : Double =  45.750000
//    var longitude : Double = 4.850000
    
//    // pour la navigation et fonction du bouton suivant
//    var isAllowedToNavigate = false
}
