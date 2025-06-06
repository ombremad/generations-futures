//
//  Questionaire_View.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionaire_View: View {
    @State var saisieText = ""
    
    func header() -> some View{
        HStack{
            ZStack{
                
                Circle()
                    .fill(.white)
                    .frame(width: 40)
                
                Image(systemName: "chevron.left")
                    .foregroundStyle(.grey500)
                
            }.padding(.leading, 30)
            
            Spacer()
            
            Text("Créer une annonce")
                .font(Font.custom("Poppins-Regular", size: 16))
            
        }.padding(.top, 30)
            .padding(.trailing, 125)
    }
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.almostWhite
                    .ignoresSafeArea()
                
                
                
                VStack{
                    
                    header()
                    
                    Spacer()
                   
                    Text("1 sur 6")
                        .font(Font.custom("Poppins-Regular", size: 10))
                    
                    Text("Trouvez un titre pour votre annonce")
                        .font(Font.custom("Poppins-SemiBold", size: 24))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.grey500)
                        .padding(.bottom, 40)
                    ZStack {
                        Capsule()
                            .frame(width: 250, height: 50)
                            .foregroundStyle(.grey50)
                        
                        // modifier la couleur du label du textField
                        //modifier l'emplacement du textField pour le centrer
                        
                        TextField("Inscrire le titre ici", text: $saisieText)
                            .foregroundStyle(.grey900)
                            .font(Font.custom("Poppins-Regular", size: 10))
                            .padding(.leading, 130)
                        
                    }
                    
                    Spacer()
                    HStack{
                        Spacer()
                        NavigationLink {
                            // page suivante
                        } label: {
                            HStack{
                                Text("Suivant")
                                    .font(Font.custom("Poppins-SemiBold", size: 24))
                                    .foregroundStyle(.grey500)
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.grey500)
                            }
                        }.padding(.trailing, 40)
                        
                    }
                    
                    
                    Spacer()

                }
            }
        }
    }
}

#Preview {
    Questionaire_View()
}
