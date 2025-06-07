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
    
    func question(num: Int = 1, titre: String = "Trouvez un titre \npour votre annonce") -> some View{
        VStack{
            Text("\(num) sur 6")
                .font(Font.custom("Poppins-Regular", size: 12))
            
            Text("\(titre)")
                .font(Font.custom("Poppins-SemiBold", size: 24))
                .multilineTextAlignment(.center)
                .foregroundStyle(.grey500)
                .padding(.bottom, 40)
        }
        
    }
    
    @State var num : Int
    @State var titre : String
    var body: some View {
       
        
        VStack{
            header()
                .padding(.bottom, 100)
            question(num: num, titre: titre)
            
        }
    }
}

#Preview {
    HeaderQuestionnaire(num: 1, titre: "Nouveau titre")
}
