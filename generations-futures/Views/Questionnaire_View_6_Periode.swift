//
//  Questionnaire_View_6_Periode.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import SwiftUI

struct Questionnaire_View_6_Periode: View {
    
    @Environment(AnnoncesViewModel.self) var viewModel
    
    @State var startingDateSelected : Date
    @State var endingDateSelected : Date
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.almostWhite
                    .ignoresSafeArea()
                
                VStack {
                    HeaderQuestionnaire(num: 6, titre: "Quand êtes vous\n disponible pour cette expérience?")
                    
                    
                    Text("Renseignez une période de disponibilités")
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundStyle(.almostWhite)
                        .frame(width: 300, height: 50)
                        .background{
                            RoundedRectangle(cornerRadius: 32)
                                .foregroundStyle(.grey500)
                        }
                        .padding(.bottom,40)
                    
                    HStack {
                        
                        Text("Du")
                            .font(Font.custom("Poppins-Regular", size: 16))
                            .foregroundStyle(.grey900)
                            .padding([.leading,.trailing], 12)
                        
                        DatePicker("Moment Selectionnée", selection: $startingDateSelected,in: Date.now..., displayedComponents: .date)
                            .labelsHidden()
                            .frame(width: 80)
                            .padding(.horizontal, 12)
                        
                        Text("au")
                            .font(Font.custom("Poppins-Regular", size: 16))
                            .foregroundStyle(.grey900)
                            .padding(.leading,12)
                        
                        DatePicker("Moment Selectionnée", selection: $endingDateSelected,in: startingDateSelected..., displayedComponents: .date)
                            .labelsHidden()
                            .frame(width: 80)
                            .padding(.horizontal, 24)
                        
                        Button {
                            viewModel.startingDateRangeSelected = String(startingDateSelected.formatted(date: .long, time: .shortened))
                            viewModel.endingDateSelected = (endingDateSelected.formatted(date: .long, time: .shortened))
                        } label: {
                            Image(systemName: "checkmark")
                                .font(.system(size: 30))
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

    }}

#Preview {
    @Previewable
    @State var viewModel = AnnoncesViewModel()
    
    Questionnaire_View_6_Periode(startingDateSelected: Date.now, endingDateSelected: Date.now)
        .environment(AnnoncesViewModel())
}
