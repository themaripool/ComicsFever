//
//  CarouselComponentView.swift
//  ComicsFever
//
//  Created by Mariela Andrade on 02/05/21.
//

import SwiftUI

struct CarouselComponentView: View {
    @State private var element: String = ""
    @State private var goToDetailsView: Bool = false
    var list: [String]
    var body: some View {
        
        NavigationLink(destination: DetailsView(imageName: element), isActive: self.$goToDetailsView) {EmptyView()}
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(list, id: \.self) { element in
                    Image(element)
                        .resizable()
                        .padding(.all, 8.0)
                        .cornerRadius(20)
                        .frame(width: 230, height: 300)
                        .onTapGesture{
                            self.goToDetailsView.toggle()
                            self.element = element
                        }
                }
            }
        }
    }
}

struct CarouselComponentView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselComponentView(list: ["placeholder_1", "placeholder_6"])
    }
}
