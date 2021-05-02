//
//  ContentView.swift
//  ComicsFever
//
//  Created by Mariela Andrade on 02/05/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack {
                    Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
                    VStack {
                        Text("Hello world")
                    }
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack {
                                Image("ic_navbar")
                                    .resizable()
                                    .frame(width: 130, height: 80)
                            }
                        }
                    }
                    .navigationBarItems(leading: Image(systemName: "heart.fill").foregroundColor(.gray), trailing: Image(systemName: "heart.fill").foregroundColor(.gray))
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
