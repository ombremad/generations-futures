//
//  Questionaire_View.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionaire_View_1: View {
    @State var saisieText = ""
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.almostWhite
                    .ignoresSafeArea()
                
                VStack{
                    
                    HeaderQuestionnaire(num: 1, titre: "Trouvez un titre pour votre annonce")
                    
                    // modifier la couleur du label du textField
                    //modifier l'emplacement du textField pour le centrer
                    Spacer()
                    
                    TextField("Inscrire le titre ici", text: $saisieText)
                        .foregroundStyle(.grey900)
                        .frame(width: 250, height: 50)
                        .font(Font.custom("Poppins-Regular", size: 10))
                        .background {
                            RoundedRectangle(cornerRadius: 32)
                                .fill(Color.grey50)
                        }
                    Spacer()
                    SuivantButton()
                    Spacer()
                    
                    
                }
            }
        }
    }
}

#Preview {
    Questionaire_View_1()
}
