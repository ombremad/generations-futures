//
//  AnnonceDetailView.swift
//  generations-futures
//
//  Created by Apprenant156 on 06/06/2025.
//
//
//  AnnonceDetailView.swift
//  generations-futures
//
//  Created by Apprenant156 on 06/06/2025.
//

import SwiftUI
import MapKit
import EventKit

struct AnnonceDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var selectedDate: Date? = nil
    @StateObject var eventManager = EventManager()
      @State private var focusedDate = Date()
      @State private var events: [EKEvent] = []

 
    let restaurant = CLLocationCoordinate2D(latitude:  45.7611078774429, longitude: 4.832697026986098)
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack(spacing: 20) {
                        ZStack {
                            // Image de l'annonce
                            Image(.Samples.coffee)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 370, height: 400)
                                .overlay(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.6)]),
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                                .clipShape(
                                    RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight])
                                )
                                .padding(.top, -20)

                            // Titre de l'annonce au centre + lieu
                            VStack(spacing: 6) {
                                Spacer()
                                VStack(spacing: 4) {
                                    Text("Un café et parler")
                                        .font(Font.custom("Poppins-Regular", size: 24))
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .shadow(radius: 4)
                                        .frame(width: 294)

                                    Text("Lyon, France")
                                        .font(.subheadline)
                                        .foregroundColor(.white.opacity(0.9))
                                }
                                .padding(.bottom, 40)
                            }
                       
                        }
                    
                    }
                .padding()
                ZStack(){
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 370, height: 650)
                        .cornerRadius(30)
                        .shadow(radius: 8)
                    VStack(alignment: .leading, spacing: 24) {
                        
                        // Description
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Description")
                                .font(Font.custom("Poppins-SemiBold", size: 16))
                                .foregroundStyle(Color("Grey-500"))

                            Text("Retrouvons nous dans l'après-midi pour discuter autour d'un verre ou d'une tasse.\nParler de tout et de rien, se tenir compagnie pour une jolie journée ensoleillée.")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundStyle(Color("Grey-900"))
                        }.frame(width: 300)

                        // Localisation
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Localisation")
                                .font(Font.custom("Poppins-SemiBold", size: 16))
                                .foregroundStyle(Color("Grey-500"))
                            
                            Map() {
                                Marker("Slake Lyon",systemImage:"cup.and.heat.waves.fill", coordinate: restaurant)
                            }
                            .cornerRadius(30)

                       

                  
                        }
                        .padding(15)
                        // Disponibilités
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Disponibilités")
                                .font(Font.custom("Poppins-SemiBold", size: 16))
                                .foregroundStyle(Color("Grey-500"))
                            
                            //Calendrier
                            MiniCalendarView(
                                month: focusedDate,
                                events: events,
                                selectedDate: selectedDate,
                                onSelectDate: { date in
                                    selectedDate = date
                                    print("Date sélectionnée : \(date)")
                                }
                            )
                            .onAppear {
                                let range = Calendar.current.dateInterval(of: .month, for: focusedDate)!
                                eventManager.fetchEvents(from: range.start, to: range.end) { fetched in
                                    events = fetched
                                }
                            }

                        }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .shadow(color: .gray.opacity(0.15), radius: 10, x: 0, y: 4)
                            .padding(.horizontal)
                            .offset(y: -30)

                            // Auteur
                           
                        }
                    .padding(20)
                    .multilineTextAlignment(.center)
                    .frame(width: 360, height: 650)
                    }

                NavigationLink(destination: ProfilView(profile: profiles[0])) {
                    ZStack{
                        Rectangle()
                            .fill(Color.accent)
                            .frame(width: 310, height: 90)
                            .cornerRadius(25)
                        HStack(spacing: 12) {
                            
                            Image(.robert)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 48, height: 48)
                                .clipShape(Circle())

                            VStack(alignment: .leading) {
                                Text(defaultName)
                                    .font(Font.custom("Poppins-SemiBold", size: 16))
                                    .foregroundStyle(Color("Grey-50"))

                                    

                                Text("“ Très grand fan de Caipirinha ”")
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(Color("Grey-50"))                        }
                        }
                        .padding(.horizontal)

                    }
                }
           
                // Bouton message
                SimpleButton(content: "Message")
                    .padding()


                }
       
        }
        .edgesIgnoringSafeArea(.top)
        .font(Font.custom("Poppins-Regular", size: 14))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement:.topBarLeading) {
                Button { dismiss() } label: {
                    BackButton()
                }
            }
            ToolbarItem(placement:.topBarTrailing) {
                Button { } label: {
                    ZStack {
                        Circle()
                            .fill(Color("Grey-50"))
                            .frame(width:44, height: 44)
                        Image(systemName: "square.and.arrow.up")
                            .foregroundStyle(Color("Grey-500"))
                    }
                }
            }
        }
        .toolbarBackground(.hidden)

    }
}

#Preview {
    AnnonceDetailView()
}
