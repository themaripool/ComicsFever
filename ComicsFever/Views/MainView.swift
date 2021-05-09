//
//  ContentView.swift
//  ComicsFever
//
//  Created by Mariela Andrade on 02/05/21.
//

import SwiftUI

struct MainView: View {
    var Trending = ["placeholder_1", "placeholder_2", "placeholder_3", "placeholder_4", "placeholder_5", "placeholder_6"]
    var New = ["placeholder_3", "placeholder_6", "placeholder_5", "placeholder_1", "placeholder_4", "placeholder_2"]
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ScrollView(.vertical) {
                    ZStack {
                        Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
                        VStack {
                            
                            homeElement(category: "Em Alta", list: Trending)
                            
                            Spacer()
                            
                            homeElement(category: "Novos", list: New)
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
    fileprivate func homeElement(category: String, list:[String]) -> some View {
        return VStack(alignment: .leading){
            Text(category)
                .foregroundColor(.gray)
                .font(.title)
                .fontWeight(.heavy)
                .padding(.bottom, 8)
            CarouselComponentView(list: list)
        }.padding(.all, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
