//
//  Questionnaire_View_3.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionnaire_View_3: View {
    var body: some View {
        ZStack {
            Color.almostWhite
                .ignoresSafeArea()
            
            VStack{
                HeaderQuestionnaire(num: 3, titre: "Une image pour votre thème?")
                
                Button {
                    // pouvoir choisir une photo
                } label: {
                    VStack{
                        Image(systemName: "plus")
                               .font(.system(size: 33))
                               .foregroundStyle(.almostWhite)
                               .padding(20)
                               .background{
                                   Circle()
                                       .fill(.grey500)
                                       
                               }
                        Text("Ajouter une image")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundStyle(.grey500.opacity(0.5))
                            .padding(.top, 2)

                    }
                }.padding(.top, 100)

                Spacer()
                
                SuivantButton()
                

            }
        }
       
    }
}

#Preview {
    Questionnaire_View_3()
}
