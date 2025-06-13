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
    @State private var uiImage: UIImage?
    @State private var selectImage: Image?
    @State private var showCropper = false
    
    var body: some View {
        
        ZStack {
            Color.almostWhite
                .ignoresSafeArea()
            
            VStack {
                HeaderQuestionnaire(num: 3, titre: "Une image pour votre thème ??")
                
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
                
                if let selectImage = selectImage {
                    selectImage
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .shadow(color: Color(shadowColor), radius: shadowAmount, x: 0, y: 4)
                        .padding(.top, 30)
                }
                
                Spacer()
                
                NavigationLink {
                    Questionnaire_View_4()
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
        
        .onChange(of: pickerItem) { _, newValue in
            Task {
                if let data = try? await newValue?.loadTransferable(type: Data.self),
                   let image = UIImage(data: data) {
                    uiImage = image
                    showCropper = true
                }
            }
        }
        
        
        
        .sheet(isPresented: $showCropper) {
            if let uiImage = uiImage {
                ImageCropper(image: uiImage) { croppedImage in
                    self.selectImage = Image(uiImage: croppedImage)
                    self.uiImage = croppedImage
                    self.showCropper = false
                }
            }
        }
        
    }
}

#Preview {
    Questionnaire_View_3()
}
