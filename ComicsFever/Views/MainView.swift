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
                ScrollView(.vertical) {
                    ZStack {
                        Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
                        VStack {
                            
                            homeElement(category: "Em Alta")
                            
                            Spacer()
                            
                            homeElement(category: "Novos")
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
    
    //MARK: Home elements
    fileprivate func homeElement(category: String) -> some View {
        return VStack(alignment: .leading){
            Text(category)
                .foregroundColor(.gray)
                .font(.title)
                .fontWeight(.heavy)
            CarouselComponentView()
        }.padding(.all, 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
