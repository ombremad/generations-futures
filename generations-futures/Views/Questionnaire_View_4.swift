//
//  Questionnaire_4.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI

struct Questionnaire_View_4: View {
    func LimitingCharacters(description: String) -> Int{
        
        if description.count <= 300 {
            return 300
        }
        else{
            return description.count
        }
        
    }
    @State var description = ""
    
    var body: some View {
        
        
        ZStack {
            Color.almostWhite
                .ignoresSafeArea()
            VStack{
                HeaderQuestionnaire(num: 4, titre: "Décrivez en quelques \n mots ce que vous souhaitez faire")
                
                // trouver un moyen de mettre de le prompt du textfield en leadingtop de son background
                // contenir le textfield dans la frame du background
                
                TextField("Retrouvons nous dans l'après-midi pour ...", text: $description)
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .frame(width: 320,height: 180)
                    .padding(.leading, 16)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.grey50)
                    }
                
                Text("\(description.count)/300 caractères")
                        .font(Font.custom("Poppins-Regular", size: 10))
                        .foregroundStyle(.grey300)
                        .frame(width: 320, alignment: .trailing)
                
                
                Spacer()
                SuivantButton()
            }
            
        }
    }
}

#Preview {
    Questionnaire_View_4()
}
