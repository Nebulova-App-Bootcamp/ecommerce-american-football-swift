//
//  BrandItemView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 17/11/21.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPIEDAD
    
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(4)
            .background(Color.white.cornerRadius(10))
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
