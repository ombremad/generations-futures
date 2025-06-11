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
            
            VStack {
                Text(defaultName)
                    .font(Font.custom("Poppins-Bold", size: 25))
                Text(defaultGeneration)
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(.accentColor)
                   
            
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

#Preview {
    ProfilView()
}
