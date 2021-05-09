//
//  HomeView.swift
//  ComicsFever
//
//  Created by Mariela Andrade on 02/05/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
           MainView()
             .tabItem {
                Image(systemName: "house")
                Text("Home")
              }
           Text("The content of the search view") //searchView
             .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
              }
            Text("The content of the 3 view") //profileView
              .tabItem {
                 Image(systemName: "person")
                 Text("Profile?")
               }
            Text("The content of the configuration view") //Ajustes
              .tabItem {
                 Image(systemName: "gearshape.fill")
                 Text("Ajustes")
               }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
