//
//  QuantifyButtonView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 19/11/21.
//

import SwiftUI

struct QuantifyButtonView: View {
    //MARK: - PROPIEDAD
    
    @State private var counter: Int = 0
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 8, content: {
            Button(
                action: {
                    if counter > 0 {
                        feedback.impactOccurred()
                        counter -= 1
                    }
                },
                label: {
                    Image(systemName: "minus.circle")
                })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 35)
            Button(
                action: {
                    if counter < 100 {
                        feedback.impactOccurred()
                        counter += 1
                    }
                },
                label: {
                    Image(systemName: "plus.circle")
                })
            Spacer()
            Button(
                action: {
                    feedback.impactOccurred()
                },
                label: {
                    Image(systemName: "heart.circle")
                        .foregroundColor(.pink)
                })
            })
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
    }
}

struct QuantifyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        QuantifyButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
