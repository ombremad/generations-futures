//
//  HobbyButtonView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 10/06/2025.
//

import SwiftUI

struct HobbyButtonView: View {
    var icon: String = "figure.run"
    var label: String = "Course à pieds"
    
    @State var myHobby: Bool = false
    
    var body: some View {
        Button {
            myHobby.toggle()
        } label: {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 32, weight: .bold))
                    .padding()
                    .frame(width: 70, height: 70)
                    .background(RoundedRectangle(cornerRadius: 50).stroke((myHobby ? .accent : .grey100), lineWidth: 6))
                    .padding(.horizontal, 5)
                    .padding(.top, 10)
                Text(label)
                    .font(Font.custom("Poppins-Regular", size: 15))
            } .foregroundStyle(myHobby ? .accent : .grey100)
                .padding(.horizontal, 10)
        }
    }
}

#Preview {
    HobbyButtonView()
}
