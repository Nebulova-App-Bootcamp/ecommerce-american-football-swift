//
//  HeaderTextView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 19/11/21.
//

import SwiftUI

struct HeaderTextView: View {
    //MARK: - PROPIEDAD
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            Text("Casco de Protección")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        })
            .foregroundColor(.white)
        
    }
}

struct HeaderTextView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTextView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
