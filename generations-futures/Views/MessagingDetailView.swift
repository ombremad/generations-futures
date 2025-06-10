//
//  MessagingDetailView.swift
//  generations-futures
//
//  Created by Anne Ferret on 10/06/2025.
//

import SwiftUI

struct MessagingDetailView: View {
    
    @State private var messageInput: String = ""
    
    func header() -> some View {
        VStack {
            Image(defaultProfilePicture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 48, height: 48)
            Text(defaultName)
        }
        .padding()
    }

    func messagesHistory() -> some View {
        ScrollView {
            VStack {
                SpeechBubble(
                    message: "Bonjour !",
                    isSender: true
                )
                SpeechBubble(
                    message: "Comment ça va aujourd'hui ?",
                    isSender: true
                )
                SpeechBubble(
                    message: "Super, il fait beau",
                    isSender: false
                )
                SpeechBubble(
                    message: "Ça me tenterait bien une petite balade dans un parc !",
                    isSender: false
                )
                SpeechBubble(
                    message: "👏👏👏",
                    isSender: true
                )
                SpeechBubble(
                    message: "Let's go !",
                    isSender: true
                )
            }
            .padding()
        }
    }
    func footer() -> some View {
        HStack {
            ZStack {
                Rectangle()
                    .fill(Color("Grey-50"))
                HStack {
                    TextField("", text:$messageInput)
                        .foregroundColor(Color("Grey-900"))
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .padding()
                    Spacer()
                }
                
            }
            .frame(maxHeight: 35)
            .cornerRadius(cornerRadiusBig)
            Spacer(minLength: 16)
            ZStack {
                Circle()
                    .fill(Color("Red-500"))
                Image(systemName: "paperplane.fill")
                    .foregroundStyle(Color("Grey-50"))
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
            }
        }
        .frame(maxHeight: 35)
        .clipped()
        .padding()
    }
        
    var body: some View {
        VStack {
            header()
            messagesHistory()
            footer()
        }
        .font(Font.custom("Poppins-Regular", size: 12))
        .foregroundStyle(Color("Grey-900"))
    }
}

#Preview {
    MessagingDetailView()
}
