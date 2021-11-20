//
//  TopPartDetailView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 19/11/21.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPIEDAD
    
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 8, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Precio")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            })
                .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(x: isAnimating ? 0 : -35)
        })
            .onAppear(perform: {
                withAnimation(.easeIn(duration: 0.8)){
                    isAnimating.toggle()
                }
            })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
