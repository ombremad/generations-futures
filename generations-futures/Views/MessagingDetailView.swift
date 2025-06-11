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
        NavigationLink(destination: ProfilView()) {
            VStack {
                Image(defaultProfilePicture)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                Text(defaultName)
            }
        }
    }
    func messagesHistory() -> some View {
        ScrollView {
            VStack {
                ForEach(messages, id: \.self) { message in
                    SpeechBubble(message: message.text, isSender: message.isSender)
                }
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
        .padding(.horizontal)
        .padding(.vertical, 8)
    }

    var body: some View {
        VStack {
            header()
            NavigationLink(destination: AnnonceDetailView()) {
                AnnonceCardSmall()
                    .padding()
            }
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
