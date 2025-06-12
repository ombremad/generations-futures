//
//  Questionnaire_View_6.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI

struct Questionnaire_View_6: View {
    var body: some View {
        ZStack {
            Color.almostWhite
                .ignoresSafeArea()
            VStack {
                HeaderQuestionnaire(num: 6, titre: "Quand êtes vous\n disponible pour cette expérience?")
                
                NavigationLink {
                    Questionnaire_View_6_Date(viewModel: .constant(AnnoncesViewModel()))
                } label: {
                        Text("Renseigner une date précise")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundStyle(.almostWhite)
                            .frame(width: 300, height: 50)
                            .background{
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.grey500)
                            }
                        
                    }.padding(.bottom, 24)
                
                NavigationLink {
                    //
                } label: {
                    Text("Renseigner une période de disponibilités")
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundStyle(.almostWhite)
                        .frame(width: 300, height: 50)
                        .background{
                            RoundedRectangle(cornerRadius: 32)
                                .foregroundStyle(.grey500)
                        }
                    
                }
                
                Spacer()
                
            }
            
        }
    }
}

#Preview {
    Questionnaire_View_6()
}
