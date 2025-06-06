//
//  Questionnaire_View_2.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct HeaderQuestionnaire: View {
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
    
    func question() -> some View{
        
        Text("1 sur 6")
            .font(Font.custom("Poppins-Regular", size: 12))
        
        return Text("Trouvez un titre pour votre annonce")
            .font(Font.custom("Poppins-SemiBold", size: 24))
            .multilineTextAlignment(.center)
            .foregroundStyle(.grey500)
            .padding(.bottom, 40)
    }


    var body: some View {
        ZStack{
            Color.almostWhite
                .ignoresSafeArea()
            VStack{
                header()
                
                question()
            }
            
            
        }
      
        
    }
}

#Preview {
    HeaderQuestionnaire()
}
