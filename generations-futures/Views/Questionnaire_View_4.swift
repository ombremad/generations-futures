//
//  Questionnaire_4.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI

struct Questionnaire_View_4: View {
    func LimitingCharacters(description: String) -> Int{
        
        if description.count <= 300 {
            return description.count
        }
        else{
            return description.count
        }
        
    }
    @Environment(AnnoncesViewModel.self) var viewModel
    @State var description = ""
    @FocusState private var Nfocus: Bool
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                Color.almostWhite
                    .ignoresSafeArea()
                VStack{
                    HeaderQuestionnaire(num: 4, titre: "Décrivez en quelques \n mots ce que vous \nsouhaitez faire")
                    
                    
                    TextEditor(text: $description)
                        .focused($Nfocus)
                        .frame(height: 160).colorMultiply(Color(.grey50))
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .frame(width: 310,height: 200)
                        .padding(.leading, 16)
                        .background(.grey50,in: RoundedRectangle(cornerRadius: 20))
                        .overlay(alignment: .topLeading){
                            if !Nfocus && description.isEmpty{
                                Text("Retrouvons nous dans l'après-midi pour...")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundColor(.grey300).padding()
                            }
                        }
                    
                    
                    Text("\(description.count)/300 caractères")
                        .font(Font.custom("Poppins-Regular", size: 10))
                        .foregroundStyle(.grey300)
                        .frame(width: 320, alignment: .trailing)
                    
                    
//                    Button {
//                        // injecter ma valeur dans la varible de mon viewModel
//                        viewModel.description = description
//                    } label: {
//                        Image(systemName: "checkmark")
//                            .font(.system(size: 40))
//                            .padding(.top)
//                    }/*.alert("Description enregistrée!", isPresented: <#T##Binding<Bool>#>, actions: <#T##() -> View#>)*/
                    
                    Spacer()
                    NavigationLink {
                        Questionnaire_View_5()
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
    
    Questionnaire_View_4()
        .environment(AnnoncesViewModel())
}
