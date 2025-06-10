//
//  ProfilEditionView.swift
//  generations-futures
//
//  Created by Noa Cengarle on 06/06/2025.
//

import SwiftUI

struct HobbiesView: View {
    @Environment(\.dismiss) var dismiss
    
    let columns = [
            GridItem(.adaptive(minimum: 90))
        ]

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.grey100)
                }
            } .padding(.bottom)
            
            VStack {
                Text("Indiquez vos passions")
                    .font(Font.custom("Poppins-Regular", size: 20))
                Text("Maximum 4")
                    .font(Font.custom("Poppins-Regular", size: 15))
                
                LazyVGrid(columns: columns) {
                    ForEach(hobbies, id: \.self) { hobby in
                        HobbyButtonView(icon: hobby.icon, label: hobby.label)
                    }
                }
            }
            Spacer()
            
            Button {
            } label: {
                Text("Valider")
                    .font(Font.custom("Poppins-Bold", size: 20))
                    .foregroundColor(.accentColor)
            }
        } .padding()
    }
}

struct ProfilEditionView: View {
    @State var showingHobbies = false
    @State var surname: String = defaultSurname
    @State var name: String = defaultName
    @State var lieu: String = defaultLieu
    @State var biography: String = "Un roadtrip au Brésil m’a suffi pour tomber amoureux de la samba. 17 ans d’expériences dans les pattes!"
    
    
    let yearOfBirth: String = String(defaultYearOfBirth)
    let generation: String = defaultGeneration
    
    func editingPen() -> some View {
        Image(systemName: "pencil")
            .font(.system(size: 20))
            .foregroundColor(.accent)
            .padding(.bottom, 10)
            .padding(.trailing, 10)
    }
    
    var body: some View {
        VStack {
            Text("Edition du profil")
                .padding(.bottom, 30)
            
            GeometryReader { geometry in
                VStack {
                    HStack(alignment: .top) {
                        VStack {
                            ZStack {
                                Image(.robert)
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
                                    Text(yearOfBirth)
                                        .font(Font.custom("Poppins-Bold", size: 15))
                                    Text(generation)
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
                            .frame(height: geometry.size.width * 0.4)
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
                        
                        Button {
                            showingHobbies.toggle()
                        } label: {
                            Text("Voir plus")
                            Image(systemName: "chevron.right")
                        } .font(Font.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color.black)
                        .sheet(isPresented: $showingHobbies) {
                            HobbiesView()
                        }
                    }
                    
                    
                    HStack {
                       
                    }
                }
            }
        } .padding(10)
    }
}

#Preview {
    ProfilEditionView()
}
