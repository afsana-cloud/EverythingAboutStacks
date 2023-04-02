//
//  ContentView.swift
//  EverythingAboutStacks
//
//  Created by afsana-farheen.
//

import SwiftUI


struct UserView: View {
    let users = [
        User(name: "John", isActive: true, profileImage: "profile1"),
        User(name: "Sarah", isActive: false, profileImage: "profile2"),
        User(name: "David", isActive: true, profileImage:"profile6"),
        User(name: "Emily", isActive: false, profileImage:"profile4"),
        User(name: "Mike", isActive: true, profileImage:"profile5"),
        User(name: "Mike", isActive: true, profileImage:"profile1")
    ]

    
    var body: some View {
        Form {
            ForEach(users) { user in
                HStack{
                    ZStack(alignment: .leading) {
                        Image(user.profileImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100,height: 100)
                            .clipShape(Circle())
                        Circle()
                            .fill(user.statusColor)
                            .frame(width: 15, height: 15).padding(.leading,80)
                            .padding(.top,65)
                    }
                    VStack{
                        Text(user.name).font(.title2)
                        Text("Hello").font(.callout)
                        Text("10:20pm").font(.caption)
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct User:Identifiable {
    var id = UUID()
    let name: String
    let isActive: Bool
    let profileImage: String
    
    var statusColor: Color {
        return isActive ? .green : .yellow
    }
}

