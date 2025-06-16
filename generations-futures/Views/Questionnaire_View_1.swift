//
//  Questionaire_View.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionnaire_View_1: View {
    @Environment(AnnoncesViewModel.self) var viewModel
//    @Environment(\.dismiss) private var dismiss

    @State var saisieText = ""
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.almostWhite
                    .ignoresSafeArea()
                
                VStack{
                    
                    HeaderQuestionnaire(num: 1, titre: "Trouvez un titre pour votre annonce")
                    
                    // modifier la couleur du label du textField
                    Spacer()
                    
                    HStack {
                        TextField("Inscrire le titre ici", text: $saisieText)
                            .font(Font.custom("Poppins-Regular", size: 16))
                            .foregroundStyle(.grey900)
                            .frame(width: 300, height: 50)
                            .multilineTextAlignment(.center)
                        //                        .padding(.leading, 20)
                            .background {
                                RoundedRectangle(cornerRadius: 32)
                                    .fill(Color.grey50)
                            }
                        Button {
                            // valider et append dans le doc final
                            //                            viewModel.annonceList.append(saisieText)
                            viewModel.title = saisieText
                        } label: {
                            Image(systemName: "checkmark")
                                .font(.system(size: 30))
                            
                        }
                    }
                    Spacer()
                    
                    NavigationLink {
                        Questionnaire_View_2()
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
    
    Questionnaire_View_1()
        .environment(viewModel)
}
