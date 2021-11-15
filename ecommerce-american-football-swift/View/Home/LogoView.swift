//
//  LogoView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 15/11/21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 5){
            Text("Super".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25, alignment: .center)
            
            Text("Ball".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        }
        
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
