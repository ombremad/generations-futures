//
//  Questionnaire_View_5.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import SwiftUI
import MapKit

struct Questionnaire_View_5: View {
    
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
            span: MKCoordinateSpan(latitudeDelta: -10, longitudeDelta: 1)
        )
    )
    
    @State var recherche = ""
    
    var body: some View {
        ZStack{
            Color.almostWhite
                .ignoresSafeArea()
            VStack{
                HeaderQuestionnaire(num: 5, titre: "Où voulez vous aller?")
                
                ZStack {
                    // créer un filtre pour chercher les plus grandes villes de France
                    TextField("Recherchez le lieu ici", text: $recherche)
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 50)
                        .background{
                            RoundedRectangle(cornerRadius: 32)
                                .fill(.grey50)
                        }
                        .searchable(text: $recherche)
                    
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20))
                        .frame(width: 250, alignment: .trailing)
                        .foregroundStyle(.grey300)
                }.padding(.bottom, 24)
                
                
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
                
                SuivantButton(pageSuivante: Questionnaire_View_6())
            }
        }
        
    }
}

#Preview {
    Questionnaire_View_5()
}
