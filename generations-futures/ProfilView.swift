//
//  ProfilView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 04/06/2025.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        Circle()
            .clipped(antialiased: true)
            .ignoresSafeArea(edges: .all)
        
        Text("Profil")
        Image("image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .frame(width: 200, height: 200)
        Text("Robert")
        Text("Génération Baobab")
        Text("Lille, France")
        Text("Un roadtrip au Brésil m’a suffi pour tomber amoureux de la samba. \n17 ans d’expériences dans les pattes!")
        
        HStack {
            Image(systemName: "figure.run")
                .padding()
                .frame(width: 50, height: 50)
                .background(RoundedRectangle(cornerRadius: 50).stroke(.black, lineWidth: 2))
            Image(systemName: "theatermasks.fill")
                .padding()
                .frame(width: 50, height: 50)
                .background(RoundedRectangle(cornerRadius: 50).stroke(.black, lineWidth: 2))
            Image(systemName: "airplane")
                .padding()
                .frame(width: 50, height: 50)
                .background(RoundedRectangle(cornerRadius: 50).stroke(.black, lineWidth: 2))
            Image(systemName: "tortoise.fill")
                .padding()
                .frame(width: 50, height: 50)
                .background(RoundedRectangle(cornerRadius: 50).stroke(.black, lineWidth: 2))
        }
        .padding()
        
        Button(action: {}) {
            Text("Message")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.accentColor)
                .cornerRadius(25)
        }
    }
}

#Preview {
    ProfilView()
}
