//
//  MainView.swift
//  Nice Nails
//
//  Created by mac on 25.01.24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }
            
            DesignesView()
                    .tabItem {
                        Image(systemName: "text.magnifyingglass")
                        Text("Каталог")
                    }
            
            BookingView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("Записаться")
                    }
            
            MyBookingsView()
                    .tabItem {
                        Image(systemName: "note.text")
                        Text("Мои записи")
                    }
            
            ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.square")
                            .background(Color.red)
                        Text("Профиль")
                    }
        }
    }
}

#Preview {
    MainView()
}
