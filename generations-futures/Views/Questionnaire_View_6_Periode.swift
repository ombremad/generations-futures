//
//  Questionnaire_View_6_Periode.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import SwiftUI

struct Questionnaire_View_6_Periode: View {
    @Binding var viewModel : AnnoncesViewModel
    @State var startingDateSelected : Date
    @State var endingDateSelected : Date
    
    
    var body: some View {
        ZStack {
            Color.almostWhite
                .ignoresSafeArea()
            
            VStack {
                HeaderQuestionnaire(num: 6, titre: "Quand êtes vous\n disponible pour cette expérience?")
                
                
                Text("Renseigner une période de disponibilités")
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .foregroundStyle(.almostWhite)
                    .frame(width: 300, height: 50)
                    .background{
                        RoundedRectangle(cornerRadius: 32)
                            .foregroundStyle(.grey500)
                    }
                    .padding(.bottom,40)
                
                HStack {
                    DatePicker("Moment Selectionnée", selection: $startingDateSelected,in: Date.now..., displayedComponents: .date)
                        .labelsHidden()
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .padding(.horizontal, 12)
                    
                    
                    DatePicker("Moment Selectionnée", selection: $endingDateSelected,in: startingDateSelected..., displayedComponents: .date)
                        .labelsHidden()
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .padding(.horizontal, 24)
                    
                    Button {
                        viewModel.startingDateRangeSelected = startingDateSelected
                        viewModel.endingDateSelected = endingDateSelected
                    } label: {
                        Image(systemName: "checkmark")
                            .font(.system(size: 30))
                    }
                }
                
                Spacer()
            }
        }
    }}

#Preview {
    Questionnaire_View_6_Periode(viewModel: .constant(AnnoncesViewModel()), startingDateSelected: Date.now, endingDateSelected: Date.now)
}
