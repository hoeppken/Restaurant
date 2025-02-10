//
//  ContentView.swift
//  Restaurant
//
//  Created by Rafael dos Santos Varela on 10.02.25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Menu")
                        
                    }
                }
            
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("About")
                    }
                    
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                    
                    
                    
                }
        }
        
        
    }
}

#Preview {
    MainView()
}
