//
//  Questionnaire_Model.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import Foundation

// MARK: Fonction pour la limite des caratères -> Questionnaire 4
func LimitingCharacters(description: String) -> Int{
    if description.count >= 300 {
        return 300
    }
    else{
        return description.count
    }
    
}

// MARK: Thèmes -> Questionaire 2
struct Themes: Identifiable, Hashable{
    var id = UUID()
    var title : String
    var image : String
    var isSelected : Bool = true

    
    }


var thematics : [Themes] = [
    Themes(title: "Artistique", image: "building.columns"),
    Themes(title: "Café", image: "cup.and.heat.waves"),
    Themes(title: "Atelier", image: "scissors"),
    Themes(title: "Sport", image: "figure.run"),
    Themes(title: "Discussion", image: "ellipsis.message"),
    Themes(title: "Balade", image: "figure.hiking"),
    Themes(title: "Repas", image: "fork.knife")
]


//MARK: Données pour la map -> Questionaire 5
//struct Location : Hashable, Identifiable{
//    var id = UUID()
//    var name: String = "Paris"
//    var coord : (Double , Double) = (48.8566, 2.3522) // Coordonnées par défaut sur Paris
//}


// MARK: Données à injecter dans le reste de l'app -> Récap du questionnaire
struct EventCreated: Observable, Identifiable, Hashable{
    var id = UUID()
    var theme : String
//    var town : Location
}

var newEvent: [String] = []
