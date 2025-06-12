//
//  Questionnaire_View_2.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionnaire_View_2: View {
    
    var themes : [String] = ["Artistique","Café","Atelier","Visites","Sport","Discussion"]
    
    var body: some View {
        ZStack{
            Color.almostWhite
                .ignoresSafeArea()
            VStack{
                HeaderQuestionnaire(num: 2, titre: "Quel est le thème?")
                
                ForEach(themes, id: \.self) { theme in
                    ZStack {
                        
                        Text(theme)
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundStyle(.grey900)
                            .frame(width: 240, height: 50)
                            .background{
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.grey50)
                            }
                        Circle()
                            .frame(width: 40)
                            .foregroundStyle(.white)
                            .padding(.trailing, 150)
                            .padding(.bottom,25)
                        
                        Image(systemName: "building.columns")
                            .foregroundStyle(.red500)
                            .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
                    }
                }
                
                Spacer()
                SuivantButton()
            }
            
        }
        
    }
}

#Preview {
    Questionnaire_View_2()
}
