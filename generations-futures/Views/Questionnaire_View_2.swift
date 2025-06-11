//
//  Questionnaire_View_2.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct Questionnaire_View_2: View {
    var body: some View {
        ZStack{
            Color.almostWhite
                .ignoresSafeArea()
            VStack{
                HeaderQuestionnaire(num: 2, titre: "Quel est le thème?")
                
                
                SuivantButton()
            }
            
        }
       
    }
}

#Preview {
    Questionnaire_View_2()
}
