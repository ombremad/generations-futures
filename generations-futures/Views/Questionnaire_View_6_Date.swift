//
//  Questionnaire_View_6_Date.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI
import EventKit

struct Questionnaire_View_6_Date: View {
    @Binding var viewModel : AnnoncesViewModel
    @State var selectedDate: Date = Date.now
    
    var body: some View {
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
                
                DatePicker("Moment Selectionnée", selection: $selectedDate,in: Date.now...)
                    .labelsHidden()
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .padding(.horizontal, 24)
                Button {
                    viewModel.preciseDate = selectedDate                } label: {
                        Text("VALIDER")
                            .font(Font.custom("Poppins-Regular", size: 28))
                            .foregroundStyle(.grey500)
                            .fontWeight(.black)
                    }
                
                
                Spacer()
                
                //                SuivantButton()
            }
            
        }
    }
}

#Preview {
    Questionnaire_View_6_Date(viewModel: .constant(AnnoncesViewModel()), selectedDate: Date.now)
}
