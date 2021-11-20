//
//  ContentView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 12/11/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPIEDAD
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
            VStack(spacing: 0){
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top, 50)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.06), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.5)
                        .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Cascos")
                        ProductGridView()
                            .padding(15)
                        
                        TitleView(title: "Brands")
                        BrandGridView()
                        FooterView()
                            .padding(.horizontal)
                        }
                    })
                    
                
                
                }
            } else {
                ProductDetailView()
            }
            
        }
        .ignoresSafeArea(.all, edges: .all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
