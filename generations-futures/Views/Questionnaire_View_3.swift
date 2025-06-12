//
//  Questionnaire_View_3.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI
import PhotosUI

struct Questionnaire_View_3: View {
    @State private var pickerItem: PhotosPickerItem?
    @State private var selectImage: Image?

    var body: some View {
        ZStack {
            Color.almostWhite
                .ignoresSafeArea()

            VStack {
                HeaderQuestionnaire(num: 3, titre: "Une image pour votre thème?")

                PhotosPicker(
                    selection: $pickerItem,
                    matching: .images,
                    photoLibrary: .shared()
                ) {
                    VStack {
                        Image(systemName: "plus")
                            .font(.system(size: 33))
                            .foregroundStyle(.almostWhite)
                            .padding(20)
                            .background {
                                Circle()
                                    .fill(.grey500)
                            }
                        Text("Ajouter une image")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundStyle(.grey500.opacity(0.5))
                            .padding(.top, 2)
                    }
                }
                .padding(.top, 100)

                Spacer()

                SuivantButton()
            }
        }
        .onChange(of: pickerItem) {
            Task {
                if let data = try? await pickerItem?.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    selectImage = Image(uiImage: uiImage)
                }
            }
        }


    }
}

#Preview {
    Questionnaire_View_3()
}
