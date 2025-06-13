//
//  Questionnaire_View_7_Recap.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import SwiftUI

struct Questionnaire_View_7_Recap: View {
    
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
                        ZStack{
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.almostWhite)
                                .frame(width: 350)
                            VStack{
                                Text("Titre")
                                    .font(Font.custom("Poppins-Bold", size: 16))
                                Text(viewModel.title)
                                    .font(Font.custom("Poppins-Bold", size: 16))
                                
                                Text("à \(viewModel.location) le \(viewModel.preciseDate)")
                                
                                Spacer()
                            }
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.red.opacity(0.5))
                                    .frame(width: 300,height: 550)
                                VStack{
                                    Text("Thème")
                                        .font(Font.custom("Poppins-Bold", size: 16))
                                    
                                    HStack{
                                        Text(viewModel.theme?.title ?? "Unknown")
                                            .font(Font.custom("Poppins-Regular", size: 16))
                                        
                                        Image(systemName: viewModel.image)
                                            .font(.system(size: 14))
                                            .padding(30)
                                            .background{
                                                Circle()
                                                    .fill(.almostWhite)
                                            }
                                    }
                                    
                                    Text("Description")
                                        .font(Font.custom("Poppins-Bold", size: 16))
                                        .padding(.bottom)
                                    
                                    ScrollView {
                                        Text(viewModel.description)
                                            .font(Font.custom("Poppins-Regular", size: 12))
                                            
                                    }.frame(width: 300,height: 100)
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(.green.opacity(0.5))
                                            .frame(width: 300,height: 550)
                                        
                                        Text("Photo")
                                            .font(Font.custom("Poppins-Bold", size: 16))
                                        Image(viewModel.image)
                                            .frame(width: 100,height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }

                                    
                                    
                                }
                            }
                            
                        }
                        
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
    
    Questionnaire_View_7_Recap()
        .environment(AnnoncesViewModel())
}
