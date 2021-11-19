//
//  TitleView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 17/11/21.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 15)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Cascos")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
