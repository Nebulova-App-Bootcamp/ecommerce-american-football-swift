//
//  FooterView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 15/11/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            Text("In mel saperet expetendis. Vitae urbanitas sadipscing nec ut, at vim quis lorem labitur. Exerci electram has et, vidit solet tincidunt quo ad")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyrigth  Nebulova\nTodos los derechos reservados")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
