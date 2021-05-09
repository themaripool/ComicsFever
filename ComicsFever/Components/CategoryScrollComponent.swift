//
//  CategoryScrollComponent.swift
//  ComicsFever
//
//  Created by Mariela Andrade on 09/05/21.
//

import SwiftUI

struct CategoryScrollComponent: View {
    
    var items = ["ic_comedy", "ic_action", "ic_horror","ic_adventure"]
    var cat = ["comedy", "action", "horror","adventure"]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(items, id: \.self) { landmark in
                        VStack {
                            Button {
                                print("Button was pressed!")
                            } label: {
                                    Image(landmark)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .overlay(
                                            Circle()
                                                .size(width: 45, height: 45)
                                                .offset(x: -2,y: -2)
                                                .scale(1.5)
                                                .stroke(Color.red, lineWidth: 4)
                                        )
                            }
                            .padding(.horizontal, 4.0)
                            .frame(width: 100.0, height: 100.0)
                            Text(cat[1])
                        }
                    }
                }
            }
            
        }
    }
}

struct CategoryScrollComponent_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScrollComponent()
    }
}
