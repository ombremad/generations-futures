//
//  ProfilView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 04/06/2025.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Circle()
                    .trim(from: 0, to: 0.5)
                    .fill(.accent)
                    .frame(width: 581, height: 581)
                    .padding(.top, -300)
                    .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)
                
                VStack {
                    Text("Profil")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    ZStack(alignment: .bottomTrailing) {
                        Image(.robert)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 230, height: 230)
                            .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)
                            .overlay(alignment: .bottomTrailing) {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.accentColor)
                                    .font(.system(size: 50))
                            }
                    }
                } .padding(.top, 100)
            }
            
            VStack {
                Text(defaultName)
                    .font(Font.custom("Poppins-Bold", size: 25))
                Text(defaultGeneration)
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(.accentColor)
                   
                Text(defaultLieu)
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .padding(10)
                
                Text(defaultBio)
                    .font(Font.custom("Poppins-Regular", size: 16))
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                
                HStack {
                    HobbyBadge(hobby: "figure.run")
                    HobbyBadge(hobby: "theatermasks.fill")
                    HobbyBadge(hobby: "airplane")
                    HobbyBadge(hobby: "tortoise.fill")
                } .padding(.vertical, 50)
                
                SimpleButton(
                    content:"Message",
                    highlighted: true
                ) .padding(.bottom, 150)
            }
        }
    }
}

#Preview {
    ProfilView()
}
