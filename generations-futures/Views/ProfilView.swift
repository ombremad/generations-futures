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
            ScrollView {
                VStack {
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
                        .padding(.top, 50)
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
                    )
                }
            }
            .background {
                Circle()
                    .fill(Color("Red-500"))
                    .frame(width:500, height:500)
                    .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)
                    .offset(y:-450)
            }
        }
    }
}

#Preview {
    ProfilView()
}
