//
//  Questionaire_View.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionnaire_View_1: View {
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
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundStyle(.grey900)
                        .frame(width: 300, height: 50)
                        .multilineTextAlignment(.center)
//                        .padding(.leading, 20)
                        .background {
                            RoundedRectangle(cornerRadius: 32)
                                .fill(Color.grey50)
                        }
                    Spacer()
                    SuivantButton(pageSuivante: Questionnaire_View_2())
                    
                    
                }
            }
        }
    }
}

#Preview {
    Questionnaire_View_1()
}
