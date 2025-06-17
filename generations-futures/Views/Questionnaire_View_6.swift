//
//  Questionnaire_View_6.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI

struct Questionnaire_View_6: View {
    
    @Environment(AnnoncesViewModel.self) var viewModel
    var body: some View {
        NavigationStack{
            ZStack {
                Color.almostWhite
                    .ignoresSafeArea()
                VStack {
                    HeaderQuestionnaire(num: 6, titre: "Quand êtes vous\n disponible pour cette expérience?")
                    
                    Spacer()
                    
                    NavigationLink {
                        Questionnaire_View_6_Date()
                    } label: {
                        Text("Renseigner une date précise")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundStyle(.grey500)
                            .frame(width: 250, height: 45)
                            .background{
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.almostWhite)
                                    .shadow(radius: 4, y: 3)
                            }
                        
                    }.padding(.bottom, 48)
                    
                    NavigationLink {
                        Questionnaire_View_6_Periode(startingDateSelected: Date.now, endingDateSelected: Date.now)
                    } label: {
                        Text("Renseigner une période de disponibilités")
                            .font(Font.custom("Poppins-Regular", size: 10))
                            .foregroundStyle(.grey500)
                            .frame(width: 250, height: 45)
                            .background{
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.almostWhite)
                                    .shadow(radius: 4, y: 3)
                                   
                            }
                        
                    }.padding(.bottom,90)
                    
                    Spacer()
                    
                }
                
            }

        }
        .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    @Previewable
    @State var viewModel = AnnoncesViewModel()
    
    Questionnaire_View_6()
        .environment(AnnoncesViewModel())
}
