//
//  Questionnaire_Recap_View_7.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import SwiftUI

struct Questionnaire_Recap_View_7: View {
    
    @Environment(AnnoncesViewModel.self) var viewModel
    func header() -> some View{
        HStack{
            ZStack{
                
                Circle()
                    .fill(.white)
                    .frame(width: 40)
                
                Image(systemName: "chevron.left")
                    .foregroundStyle(.grey500)
                
            }
            
            Spacer()
            
            Text("Récapitulatif")
                .font(Font.custom("Poppins-Regular", size: 16))
                .foregroundStyle(.grey50)
            
            Spacer()
            
            Button {
                // passer à la page de l'annonce
            } label: {
                HStack {
                    
                    Text("SUIVANT")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundStyle(.grey50)
                        .fontWeight(.black)
                        .contentShape(Rectangle())
                    
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.grey50)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                      
                }
            }

            
        }.padding(.top, 30)
            .padding()
    }
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.grey500
                    .ignoresSafeArea()
                
                VStack {
                    header()
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.almostWhite)
                            .frame(width: 350)
                    }
                }
            }

        }
        .navigationBarBackButtonHidden(true)

        
    }
}

#Preview {
    @Previewable
    @State var viewModel = AnnoncesViewModel()
    
    Questionnaire_Recap_View_7()
        .environment(AnnoncesViewModel())
}
