//
//  Questionnaire_View_2.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionnaire_View_2: View {
    
    @Binding var viewModel : AnnoncesViewModel
    @State private var isSelected : Bool = false
        
    var body: some View {
        ZStack{
            Color.almostWhite
                .ignoresSafeArea()
            VStack{
                HeaderQuestionnaire(num: 2, titre: "Quel est le thème?")
                ScrollView {
                    ForEach(thematics, id: \.self) { theme in
                        Button {
                            isSelected.toggle()
                            viewModel.theme = theme
                        } label: {
                            ZStack {
                                
                                Text(theme.title)
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(.grey900)
                                    .frame(width: 240, height: 50)
                                    .background{
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(isSelected ? .grey500 : .grey50)
                                    }
                                Circle()
                                    .frame(width: 40)
                                    .foregroundStyle(.white)
                                    .padding(.trailing, 150)
                                    .padding(.bottom,25)
                                
                                Image(systemName: theme.image)
                                    .foregroundStyle(.red500)
                                    .frame(width: 150, alignment: .leading)
                                
                                Spacer()
                                
                            }

                        }
                        .safeAreaPadding(.horizontal, 40)

                    }
// rechercher la signification des paddings horizontaux et verticaux
                }
                .padding(.bottom, 30)
                Spacer()
                SuivantButton(pageSuivante: Questionnaire_View_3())
            }
            
        }
        
    }
}

#Preview {
    Questionnaire_View_2(viewModel: .constant(AnnoncesViewModel()))
}
