//
//  CategoryGridView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 17/11/21.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateCategory: false),
                    footer: SectionView(rotateCategory: true)
                ) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            })
                .frame(height: 150)
                .padding(.horizontal, 10)
                .padding(.vertical, 8)
        })
        
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
