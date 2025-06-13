//
//  ProfilView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 04/06/2025.
//

import SwiftUI

struct ProfilView: View {
    
    @Environment(\.dismiss) private var dismiss

    var profile: Profile
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Image(profile.profilePicture)
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
                            .padding(.top, 30)
                        Text(profile.name)
                            .font(Font.custom("Poppins-Bold", size: 25))
                        Text(profile.generation)
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(.accentColor)
                        Text(profile.lieu)
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .padding(10)
                        Text(profile.description)
                            .font(Font.custom("Poppins-Regular", size: 16))
                            .padding(.horizontal)
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                        HStack {
                            HobbyBadge(hobby: "figure.run")
                            HobbyBadge(hobby: "theatermasks.fill")
                            HobbyBadge(hobby: "airplane")
                            HobbyBadge(hobby: "tortoise.fill")
                        } .padding(.vertical, 30)
                        
                        NavigationLink(destination: MessagingDetailView()) {
                            SimpleButton(
                                content: "Message",
                                highlighted: true,
                            )
                        }
                    }
                    .padding()
                    .background {
                        Circle()
                            .fill(Color("Red-500"))
                            .frame(width:500, height:500)
                            .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)
                            .offset(y:-500)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement:.primaryAction) {
                    NavigationLink(destination: ProfilEditionView()) {
                        ZStack {
                            Circle()
                                .fill(Color("Grey-50"))
                                .frame(width:44, height: 44)
                            Image(systemName: "pencil")
                                .foregroundStyle(Color("Grey-500"))
                        }
                    }
                }
                ToolbarItem(placement:.topBarLeading) {
                    Button { dismiss() } label: {
                        BackButton()
                    }
                }
            }
            .toolbarBackground(.hidden)
        }
    }
}

#Preview {
    ProfilView(profile: Profile(
        name: "Robert",
        surname: "Dupont",
        profilePicture: .robert,
        lieu: "Lille",
        yearOfBirth: 1961,
        generation: "Baobab",
        description: "Un roadtrip au Brésil m’a suffi pour tomber amoureux de la samba. \n17 ans d’expériences dans les pattes!"))
}
