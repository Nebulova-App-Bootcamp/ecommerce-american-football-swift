//
//  SectionView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 17/11/21.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPIEDAD
    
    @State var rotateCategory: Bool
    
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            Text("Categorias".uppercased())
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateCategory ? 90 : -90))
            Spacer()
        }
        .background(colorGray.cornerRadius(10))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateCategory: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
        
            
    }
}
