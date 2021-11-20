//
//  BrandGridView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 19/11/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing,  content: {
                ForEach(brands) { brand in BrandItemView(brand: brand)}
            })
                .frame(height: 220)
                .padding(17)
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
