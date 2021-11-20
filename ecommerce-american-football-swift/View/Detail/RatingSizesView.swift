//
//  RatingSizesView.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 19/11/21.
//

import SwiftUI

struct RatingSizesView: View {
    //MARK: - PROPIEDAD
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 5, content: {
            //RATINGS
            VStack(alignment: .leading, spacing: 5, content: {
                Text("Valoraciones")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(1...5, id: \.self){ item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 25, height: 25, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                        
                    }
                })
            })
            Spacer()
            
            //SIZESç
            VStack(alignment: .leading, spacing: 5, content: {
                Text("Tamaños")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self){ size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 25, height: 25, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(colorGray, lineWidth: 1.7)
                                )
                        })
                        
                    }
                })
            })

            
        })
    }
}

struct RatingSizesView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
