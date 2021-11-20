//
//  ProductGridView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 19/11/21.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shop: Shop

    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, content: {
            ForEach(products) { product in ProductItemView(product: product)
                    .onTapGesture {
                        feedback.impactOccurred()
                        
                        withAnimation(.easeOut){
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
            }
        })
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .environmentObject(Shop())

    }
}
