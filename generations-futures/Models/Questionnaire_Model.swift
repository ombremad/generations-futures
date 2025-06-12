//
//  Questionnaire_Model.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import Foundation

func LimitingCharacters(description: String) -> Int{
    if description.count >= 300 {
        return 300
    }
    else{
        return description.count
    }
    
}

struct Themes: Identifiable, Hashable{
    var id = UUID()
    var title : String
    var image : String
    
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

struct EventCreated: Identifiable, Hashable{
    var id = UUID()
    var theme : String
}

var newEvent: [String] = []
