//
//  CarouselComponentView.swift
//  ComicsFever
//
//  Created by Mariela Andrade on 02/05/21.
//

import SwiftUI

struct CarouselComponentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<3) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 280)
                        .background(Color.red)
                }
            }
        }
    }
}

struct CarouselComponentView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselComponentView()
    }
}
