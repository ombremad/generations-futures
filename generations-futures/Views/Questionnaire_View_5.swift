//
//  Questionnaire_View_5.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI
import MapKit

struct Questionnaire_View_5: View {
    
    
   
    
    @Environment(AnnoncesViewModel.self) var viewModel
    
    @State var search = ""
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522),
            // Coordonées à chercher par ville et à changer en fonction de la ville choisie par l'utilisateur
            span: MKCoordinateSpan(latitudeDelta: -10, longitudeDelta: 1)
        )
    )

    
    private var searchResults: [String] {
        if search.isEmpty {
            return []
        } else {
            return viewModel.towns.filter {$0.contains(search)}
        }
    }
    
    
    var body: some View {
        
        ZStack{
            Color.almostWhite
                .ignoresSafeArea()
            VStack{
                HeaderQuestionnaire(num: 5, titre: "Où voulez vous aller?")
                
                HStack{
                    TextField("Recherchez le lieu ici", text: $search)
                        .searchable(text: $search)
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 50)
                        .background{
                            RoundedRectangle(cornerRadius: 32)
                                .fill(.grey50)
                        }
                        .padding(.bottom, 24)
                    Button {
                        if search == "Lyon"{
                           position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: 45.750000, longitude: 4.850000),
                                // Coordonées à chercher par ville et à changer en fonction de la ville choisie par l'utilisateur
                                span: MKCoordinateSpan(latitudeDelta: -10, longitudeDelta: 1)
                            )
                        )
                        }
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 18))
                            .foregroundStyle(.almostWhite)
                            .padding(11)
                            .background{
                                Circle()
                                    .fill(.accent)
                            }
                            .padding(.bottom,25)
                    }
                }
                // créer un filtre pour chercher les plus grandes villes de France

                
                
                
                //                        Image(systemName: "chevron.down")
                //                            .font(.system(size: 20))
                //                            .frame(width: 250, alignment: .trailing)
                //                            .foregroundStyle(.grey300)
                //                    }
                
//                ForEach(viewModel.towns, id: \.self) { town in
//                    Button {
//                        searchResults
//                        // Doit enregistrer le choix de l'utilisateur (pour l'array du récap') et l'afficher sur la Map en dessous
//                        viewModel.location = town
//                    } label: {
//                        Text(town)
//                            .font(Font.custom("Poppins-Regular", size: 12))
//                    }
//                    
//                }
                
                
                
                // relier le résultat de la recherche aux coordonées montrées par la Map
                Map(position: $position,interactionModes: [.zoom, .pan])
                    .mapStyle(.standard(elevation: .realistic))
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                //                HStack(spacing: 50) {
                //                    Button("Londres") {
                //                        position = MapCameraPosition.region(
                //                            MKCoordinateRegion(
                //                                center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                //                                span: MKCoordinateSpan(latitudeDelta: -10, longitudeDelta: 1)
                //                            )
                //                        )
                //                    }
                //
                //                    Button("Paris") {
                //                        position = MapCameraPosition.region(
                //                            MKCoordinateRegion(
                //                                center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522),
                //                                span: MKCoordinateSpan(latitudeDelta: -10, longitudeDelta: 1)
                //                            )
                //                        )
                //                    }
                //
                //                    Button("Tokyo") {
                //                        position = MapCameraPosition.region(
                //                            MKCoordinateRegion(
                //                                center: CLLocationCoordinate2D(latitude: 35.6897, longitude: 139.6922),
                //                                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: -10)
                //                            )
                //                        )
                //                    }
                //                }
                Spacer()
                
                NavigationLink {
                    Questionnaire_View_6()
                } label: {
                    HStack{
                        Text("Suivant")
                            .font(Font.custom("Poppins-SemiBold", size: 24))
                            .foregroundStyle(.grey500)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.grey500)
                    }
                }
                .frame(width: 350, alignment: .trailing)
                .padding(.trailing, 40)
                .padding(.bottom, 120)
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        
        
    }
}

#Preview {
    @Previewable
    @State var viewModel = AnnoncesViewModel()
    
    Questionnaire_View_5()
        .environment(AnnoncesViewModel())
}
