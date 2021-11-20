//
//  ProductDetailView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 19/11/21.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPIEDAD
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 7, content: {
            //NAVIGATION BAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, 50)
            
            //HEADER
            HeaderTextView()
                .padding(.horizontal)
            
            //TOP PART DETAILS
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //BOTTOM PART DETAILS
            VStack(alignment: .center, spacing: 0, content: {
                //RATING & SIZES
                RatingSizesView()
                    .padding(.top, -20)
                    .padding(.bottom, 15)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                //QUANTIFY & FAVOURITE
                QuantifyButtonView()
                    .padding(.vertical, 13)
                
                //ADD TO CART
                AddToCartButtonView()
                    .padding(.bottom, 25)
                
                
            })
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -100)
                
                )

            
        })
                        
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
        ))
            
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
