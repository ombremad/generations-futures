//
//  ProfilView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 04/06/2025.
//

import SwiftUI

struct ProfilView: View {
    func hobby(name: String) -> some View {
        Image(systemName: name)
            .font(.system(size: 32, weight: .bold))
            .foregroundStyle(.black.opacity(0.1))
            .padding()
            .frame(width: 80, height: 80)
            .background(RoundedRectangle(cornerRadius: 50).stroke(.black.opacity(0.1), lineWidth: 8))
            .padding(.horizontal, 5)
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Circle()
                    .trim(from: 0, to: 0.5)
                    .fill(.accent)
                    .frame(width: 581, height: 581)
                    .padding(.top, -300)
                
                VStack {
                    Text("Profil")
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    ZStack(alignment: .bottomTrailing) {
                        Image(.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 230, height: 230)
                        
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.accentColor)
                            .font(.system(size: 40))
                            .offset(x: -11, y: -10)
                    }
                } .padding(.top, 100)
            }
            
            VStack {
                Text("Robert")
                    .font(.title)
                    .bold()
                Text("Génération Baobab")
                    .foregroundColor(.accentColor)
                   
                Text("Lille, France")
                    .padding()
                
                Text("Un roadtrip au Brésil m’a suffi pour tomber amoureux de la samba. \n17 ans d’expériences dans les pattes!")
                    .padding(.horizontal)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                
                HStack {
                    hobby(name: "figure.run")
                    hobby(name: "theatermasks.fill")
                    hobby(name: "airplane")
                    hobby(name: "tortoise.fill")
                } .padding(.vertical, 50)
                
                Button(action: {}) {
                    Text("Message")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.accentColor)
                        .cornerRadius(25)
                } .shadow(color: .gray, radius: 2, x: 0, y: 5)
                    .padding(.bottom, 150)
            }
        }
    }
}

#Preview {
    ProfilView()
}
