//
//  CropView.swift
//  generations-futures
//
//  Created by Apprenant156 on 12/06/2025.
//

import SwiftUICore
import UIKit
import SwiftUI

struct ImageCropper: View {
    let image: UIImage
    var onCropped: (UIImage) -> Void
    
    @State private var zoomScale: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    
    var body: some View {
        VStack {
            Text("Ajustez votre image")
                .font(.headline)
                .padding()
            
            GeometryReader { geo in
                let side = min(geo.size.width, geo.size.height) * 0.8
                ZStack {
                    Color.black.opacity(0.8)
                        .edgesIgnoringSafeArea(.all)
                    
                    // Image d'edition
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: side, height: side)
                        .scaleEffect(zoomScale)
                        .offset(offset)
                        .gesture(
                            SimultaneousGesture(
                                DragGesture()
                                    .onChanged { value in
                                        offset = value.translation
                                    },
                                MagnificationGesture()
                                    .onChanged { scale in
                                        zoomScale = scale
                                    }
                            )
                        )
                        .clipShape(Rectangle())
                        .overlay(
                            Rectangle()
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .frame(width: side, height: side)
                        .clipped()
                }
            }
            .frame(height: 400)
            
            HStack {
                Button("Annuler") {
                    onCropped(image)
                }
                .padding()
                
                Spacer()
                
                Button("Valider") {
                    let cropped = cropImage(image: image, zoom: zoomScale, offset: offset)
                    onCropped(cropped)
                }
                .padding()
            }
        }
    }
    
    func cropImage(image: UIImage, zoom: CGFloat, offset: CGSize) -> UIImage {
        let imageSize = image.size
        let sideLength = min(imageSize.width, imageSize.height)
        
        let cropRect = CGRect(
            x: (imageSize.width - sideLength) / 2,
            y: (imageSize.height - sideLength) / 2,
            width: sideLength,
            height: sideLength
        )
        
        guard let cgImage = image.cgImage?.cropping(to: cropRect) else { return image }
        return UIImage(cgImage: cgImage, scale: image.scale, orientation: image.imageOrientation)
    }

}
