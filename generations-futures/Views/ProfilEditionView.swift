//
//  ProfilEditionView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 06/06/2025.
//

import SwiftUI

struct ProfilEditionView: View {
    
    @Environment(\.dismiss) private var dismiss

    @State var surname = defaultSurname
    @State var name: String = defaultName
    @State var lieu: String = defaultLieu
    @State var biography: String = "Un roadtrip au Brésil m’a suffi pour tomber amoureux de la samba. 17 ans d’expériences dans les pattes!"
    
    let columns = [
               GridItem(.adaptive(minimum: 90))
            ]
    
    func editingPen() -> some View {
        Image(systemName: "pencil")
            .font(.system(size: 20))
            .foregroundColor(.accent)
            .padding(.bottom, 10)
            .padding(.trailing, 10)
    }
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    VStack {
                        HStack(alignment: .top) {
                            VStack {
                                ZStack {
                                    Image(defaultProfilePicture)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .overlay(alignment: .center) {
                                            Circle()
                                                .fill(.black.opacity(0.3))
                                                .overlay {
                                                    Image(systemName: "camera.fill")
                                                        .foregroundStyle(.white.opacity(0.6))
                                                        .font(.system(size: 35))
                                                }
                                        }
                                        .clipShape(Circle()).frame(width: 150, height: 150)
                                        .overlay(alignment: .bottomTrailing) {
                                            Image(systemName: "checkmark.circle.badge.xmark")
                                                .foregroundStyle(.accent)
                                                .font(.system(size: 34))
                                                .offset(x: -10, y: -10)
                                        }
                                }
                                
                                Text("Vérifier le profil")
                                    .foregroundStyle(.accent)
                                    .font(Font.custom("Poppins-Regular", size: 14))
                            } .padding(.trailing, 15)
                            
                            VStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Nom")
                                        .font(Font.custom("Poppins-Regular", size: 15))
                                    HStack {
                                        TextField(
                                                    "Surname",
                                                    text: $surname
                                                )
                                        .textFieldStyle(.roundedBorder)
                                        .font(.custom("Poppins-Bold", size: 20))
                                        .overlay(alignment: .bottomTrailing) {
                                            editingPen()
                                        }
                                    }
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("Prénom")
                                        .font(Font.custom("Poppins-Regular", size: 15))
                                    HStack {
                                        TextField(
                                                    "Name",
                                                    text: $name
                                                )
                                        .textFieldStyle(.roundedBorder)
                                        .font(.custom("Poppins-Bold", size: 20))
                                        .overlay(alignment: .bottomTrailing) {
                                            editingPen()
                                        }
                                    }
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("Localisation")
                                        .font(Font.custom("Poppins-Regular", size: 15))
                                    HStack {
                                        TextField(
                                                    "Localisation",
                                                    text: $lieu
                                                )
                                        .textFieldStyle(.roundedBorder)
                                        .font(.custom("Poppins-Regular", size: 16))
                                        .overlay(alignment: .bottomTrailing) {
                                            editingPen()
                                        }
                                    }
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("Année de naissance")
                                        .font(Font.custom("Poppins-Regular", size: 15))
                                    HStack {
                                        Text(String(defaultYearOfBirth))
                                            .font(Font.custom("Poppins-Bold", size: 15))
                                        Text(defaultGeneration)
                                            .font(Font.custom("Poppins-Regular", size: 14))
                                            .foregroundColor(.accent)
                                    }
                                } .padding(.vertical)
                            }
                        }
                    
                        HStack {
                            Text("Biographie")
                                .font(Font.custom("Poppins-Regular", size: 15))
                            Spacer()
                        }
                        
                        HStack {
                            TextEditor(text: $biography)
                                .padding()
                                .scrollContentBackground(.hidden)
                                .background(
                                        RoundedRectangle(cornerRadius: 14)
                                            .fill(Color.grey100.opacity(0.5))
                                    )
                                .frame(height: 150)
                                .overlay(alignment: .bottomTrailing) {
                                    editingPen()
                                }
                        }
                        
                        HStack {
                            Spacer()
                            Text("\(biography.count)/200 caractères")
                                .font(Font.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color.grey200)
                        } .padding(.bottom)
                        
                        HStack {
                            Text("Centres d'intérêt")
                                .font(Font.custom("Poppins-Regular", size: 15))
                            Spacer()
                        }
                        
                        LazyVGrid(columns: columns) {
                            ForEach(hobbies, id: \.self) { hobby in
                                HobbyButtonView(icon: hobby.icon, label: hobby.label)
                            }
                        }
                    }
                } .padding(10)
            }
            
            NavigationLink(destination: ProfilView(profile: profiles[0])) {
                SimpleButton(
                    content:"Enregistrer",
                    highlighted: true
                ) .padding(.top, 30)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Édition du profil")
            }
            ToolbarItem(placement:.topBarLeading) {
                Button { dismiss() } label: {
                    BackButton()
                }
            }
        }
        .font(Font.custom("Poppins-Regular", size: 16))
        .foregroundStyle(Color("Grey-900"))
    }
}

#Preview {
    ProfilEditionView()
}
