//
//  Questionnaire_View_2.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionnaire_View_2: View {
    
    @Environment(AnnoncesViewModel.self) var viewModel
    @State private var isSelected : Bool = false
    
    var body: some View {
        NavigationStack{
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
                    
                    NavigationLink {
                        Questionnaire_View_3()
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
        
    }
}

#Preview {
    @Previewable
    @State var viewModel = AnnoncesViewModel()
    
    Questionnaire_View_2()
        .environment(AnnoncesViewModel())
}
