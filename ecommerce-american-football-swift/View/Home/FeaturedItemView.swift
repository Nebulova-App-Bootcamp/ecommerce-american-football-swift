//
//  FeaturedItemView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 17/11/21.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPIEDAD
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
