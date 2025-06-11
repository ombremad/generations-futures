//
//  DefaultValues.swift
//  generations-futures
//
//  Created by Anne Ferret on 02/06/2025.
//

import SwiftUI

// Valeurs par défaut pour les démos
let defaultTitre: String = "Mise en pot"
let defaultThematique: String = "Jardinage"
let defaultName: String = "Robert"
let defaultSurname: String = "Dupont"
let defaultProfilePicture: ImageResource = .robert
let defaultLieu: String = "Lille"
let defaultYearOfBirth: Int = 1961
let defaultGeneration: String = "Génération Baobab"
let defaultIllustration: String = "samples/plant"
let defaultBadge: String = "carrot"
let defautHobby: String = "figure.run"

// Valeurs visuelles par défaut
let shadowAmount: CGFloat = 4
let shadowColor: Color = Color("Grey-200")
let cornerRadiusSmall: CGFloat = 12
let cornerRadiusBig: CGFloat = 90

// Conversation de démo

struct Message: Hashable {
    var text: String
    var isSender: Bool
}

let messages : [Message] = [
    Message(text: "Bonjour !", isSender: true),
    Message(text: "Comment ça va aujourd'hui ?", isSender: true),
    Message(text: "Super, il fait beau", isSender: false),
    Message(text: "Je me fais justement une petite session jardinage, la météo est parfaite, mais les plantes ont besoin d'eau.", isSender: false),
    Message(text: "Je prends toute aide disponible 👀", isSender: false),
    Message(text: "👏👏👏", isSender: true),
    Message(text: "Let's go !!!", isSender: true)
]

struct ListingMessage: Hashable {
    var titre: String
    var name: String
    var surname: String
    var preview: String
    var profilePicture: ImageResource
    var isRead: Bool
}

let listingMessages: [ListingMessage] = [
    ListingMessage(titre: defaultTitre, name: defaultName, surname: defaultSurname, preview: "Bonjour !", profilePicture: defaultProfilePicture, isRead: false),
    ListingMessage(titre: defaultTitre, name: defaultName, surname: defaultSurname, preview: "Bonjour !", profilePicture: defaultProfilePicture, isRead: true),
    ListingMessage(titre: defaultTitre, name: defaultName, surname: defaultSurname, preview: "Bonjour !", profilePicture: defaultProfilePicture, isRead: true)
]

struct Hobby: Hashable {
    var icon: String
    var label: String
}

let hobbies: [Hobby] = [
    Hobby(icon: "figure.run", label: "Sport"),
    Hobby(icon: "theatermasks.fill", label: "théâtre"),
    Hobby(icon: "music.note", label: "Musique"),
    Hobby(icon: "book.fill", label: "Lecture"),
    Hobby(icon: "pencil", label: "Écriture"),
    Hobby(icon: "camera.fill", label: "Photo"),
    Hobby(icon: "gamecontroller.fill", label: "Jeux vidéo"),
    Hobby(icon: "carrot.fill", label: "Jardinage"),
    Hobby(icon: "popcorn.fill", label: "Cinéma"),
    Hobby(icon: "airplane", label: "Voyages"),
    Hobby(icon: "tortoise.fill", label: "Animaux")
   ]
