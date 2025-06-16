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
let defaultIllustration: ImageResource = .Samples.plant
let defaultBadge: String = "carrot"
let defautHobby: String = "figure.run"
let defaultBio: String = "Un roadtrip au Brésil m’a suffi pour tomber amoureux de la samba. \n17 ans d’expériences dans les pattes!"

// Valeurs visuelles par défaut
let shadowAmount: CGFloat = 4
let shadowColor: Color = Color("Grey-200")
let cornerRadiusSmall: CGFloat = 12
let cornerRadiusBig: CGFloat = 90

// Données de démo
// SVP NE CHANGEZ PAS L'ORDRE DES DONNÉES DANS LES TABLEAUX !
// Des trucs sont codés en dur. Si vous voulez rajouter des données, faites-le à la fin des tableaux.

struct Profile: Hashable {
    var name: String
    var surname: String
    var profilePicture: ImageResource
    var lieu: String
    var yearOfBirth: Int
    var generation: String
    var description: String
    var favHobbies: [Hobby]

    init(name: String, surname: String, profilePicture: ImageResource, lieu: String, yearOfBirth: Int, generation: String, description: String) {
        self.name = name
        self.surname = surname
        self.profilePicture = profilePicture
        self.lieu = lieu
        self.yearOfBirth = yearOfBirth
        self.generation = generation
        self.description = description
        self.favHobbies = []
    }

    

}

var profiles: [Profile] = [
    Profile(
        name: "Robert",
        surname: "Dupont",
        profilePicture: .robert,
        lieu: "Lille",
        yearOfBirth: 1961,
        generation: "Baobab",
        description: "Un roadtrip au Brésil m’a suffi pour tomber amoureux de la samba. \n17 ans d’expériences dans les pattes!",
//        favHobbies: [hobbies[2], hobbies[5], hobbies[7], hobbies[12]]
    ),
    Profile(
        name: "Malik",
        surname: "Ben Youssef",
        profilePicture: .malik,
        lieu: "Bruxelles",
        yearOfBirth: 1981,
        generation: "Baobab",
        description: "dev web, musique électronique, tech, débats philosophiques, balades nocturnes en ville... !!!",
//        favHobbies: [hobbies[0], hobbies[7], hobbies[8], hobbies[13]]
    ),
    Profile(
        name: "Béatrice",
        surname: "Moreau",
        profilePicture: .beatrice,
        lieu: "Lyon",
        yearOfBirth: 1977,
        generation: "Baobab",
        description: "Passionnée de photographie urbaine et de littérature contemporaine. J'aime capturer l’instant et raconter des histoires. Je travaille dans la médiation culturelle et j'adore les escapades en solitaire !",
//        favHobbies: [hobbies[1], hobbies[3], hobbies[4], hobbies[5], hobbies[8]]
    )
]

struct Annonce: Hashable {
    var titre: String
    var description: String
    var illustration: ImageResource
    var thematique: Hobby
    var author: Profile
}

let annonces: [Annonce] = [
    Annonce(
        titre: "Un café et parler",
        description: "Parler de tout et de rien, de mon roadtrip au Brésil, de la samba, des plantes, des hobbies en général...",
        illustration: .Samples.coffee,
        thematique: hobbies[12],
        author: profiles[0]
    ),
    Annonce(
        titre: "Le nouveau Avatar !",
        description: "Aller voir le nouveau Avatar au cinéma ?!",
        illustration: .Samples.cinema,
        thematique: hobbies[8],
        author: profiles[2]
    ),
    Annonce(
        titre:"Mise en pot",
        description: "Mes plantes ont besoin d'un terreau tout frais ! Mais j'ai bien besoin d'aide.",
        illustration: .Samples.plant,
        thematique: hobbies[7],
        author: profiles[1]
    )
]

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

let previews = [
    "Bonjour !",
    "Hey, comment ça va ?",
    "Bonjour, je suis très intéressé par votre annonce"
]

let titles = [
    "Mise en pot",
    "Cours de cuisine",
    "Photographie"
]

let listingMessages: [ListingMessage] = profiles.enumerated().map { index, profile in
    ListingMessage(
        titre: titles[index],
        name: profile.name,
        surname: profile.surname,
        preview: previews[index],
        profilePicture: profile.profilePicture,
        isRead: true
    )
}

struct Hobby: Hashable {
    var icon: String
    var label: String
}

let hobbies: [Hobby] = [
    Hobby(icon: "figure.run", label: "Sport"),
    Hobby(icon: "theatermasks.fill", label: "Théâtre"),
    Hobby(icon: "music.note", label: "Musique"),
    Hobby(icon: "book.fill", label: "Lecture"),
    Hobby(icon: "pencil", label: "Écriture"),
    Hobby(icon: "camera.fill", label: "Photo"),
    Hobby(icon: "gamecontroller.fill", label: "Jeux vidéo"),
    Hobby(icon: "carrot.fill", label: "Jardinage"),
    Hobby(icon: "popcorn.fill", label: "Cinéma"),
    Hobby(icon: "airplane", label: "Voyages"),
    Hobby(icon: "paintbrush.pointed.fill", label: "Peinture"),
    Hobby(icon: "tortoise.fill", label: "Animaux"),
    Hobby(icon: "bubble.left.and.text.bubble.right.fill", label: "Discussion"),
    Hobby(icon: "questionmark.circle.dashed", label: "Autres")
   ]
