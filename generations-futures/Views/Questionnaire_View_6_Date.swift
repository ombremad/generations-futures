//
//  Questionnaire_View_6_Date.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI
import EventKit

struct Questionnaire_View_6_Date: View {
    
    @Environment(AnnoncesViewModel.self) var viewModel
    @State var selectedDate: Date = Date.now
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.almostWhite
                    .ignoresSafeArea()
                
                VStack {
                    HeaderQuestionnaire(num: 6, titre: "Quand êtes vous\n disponible pour cette expérience?")
                    
                    Text("Renseignez une date précise")
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundStyle(.almostWhite)
                        .frame(width: 300, height: 50)
                        .background{
                            RoundedRectangle(cornerRadius: 32)
                                .foregroundStyle(.grey500)
                        }.padding(.bottom, 24)
                    
                    // faire en sorte de pouvoir selectionner une date supérieure à la date du jour et de faire une date range
                    // possible en natif ?
                    
                    HStack {
                        DatePicker("Moment Selectionnée", selection: $selectedDate,in: Date.now...)
                            .labelsHidden()
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .padding(.horizontal, 24)
                        
                        Button {
                            viewModel.preciseDate = selectedDate                } label: {
                                Image(systemName: "checkmark")
                                    .font(.system(size: 30))
                                //                            Text("VALIDER")
                                //                                .font(Font.custom("Poppins-Regular", size: 28))
                                //                                .foregroundStyle(.grey500)
                                //                                .fontWeight(.black)
                                //                                .padding(40)
                            }
                        
                    }
                    
                    
                    Spacer()
                    
                    NavigationLink {
                        Questionnaire_View_7_Recap()
                    } label: {
                        HStack{
                            Text("Suivant")
                                .font(Font.custom("Poppins-SemiBold", size: 24))
                                .foregroundStyle(.grey500)
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.grey500)
                        }
                    }
                    .frame(width: 350, alignment: .trailing)
                    .padding(.trailing, 40)
                    .padding(.bottom, 120)
                }
                
            }

        }
        .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    @Previewable
    @State var viewModel = AnnoncesViewModel()
    
    Questionnaire_View_6_Date(selectedDate: Date.now)
        .environment(AnnoncesViewModel())
    
}
