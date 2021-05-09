//
//  DetailsView.swift
//  ComicsFever
//
//  Created by Mariela Andrade on 03/05/21.
//

import SwiftUI

struct DetailsView: View {
    
    var imageName: String
    
    var body: some View {
        ZStack{
            ZStack {
                ScrollView(.vertical){
                    Image(imageName)
                        .resizable()
                        .padding(.horizontal, 8.0)
                        .frame(width: 280, height: 380)
                    
                    VStack{
                        HStack{
                            Text("Favoritar")
                            
                            Text("Marcar como lido")
                        }
                        .padding(.all, 16.0)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum libero at ex lacinia laoreet. Pellentesque faucibus purus imperdiet tincidunt dignissim. Pellentesque cursus, odio nec vehicula consequat, dui mi pellentesque ligula, in accumsan enim risus eu enim. Proin vitae lacinia felis. Cras sit amet urna venenatis, semper eros in, cursus ipsum. Aliquam euismod ullamcorper felis, a tempor sapien euismod in. Vestibulum eleifend quam eu tincidunt tincidunt. Phasellus odio velit, scelerisque in ex eu, cursus ullamcorper metus. Praesent dapibus luctus ex vel blandit. Cras eu mollis ligula, vel rutrum est. Nunc eu orci molestie, tincidunt mauris sit amet, porta tellus. In iaculis iaculis turpis, ut maximus quam pellentesque lacinia.")
                    }
                    .padding([.top, .leading, .trailing], 16.0)
                }
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(imageName: "placeholder_5")
    }
}
