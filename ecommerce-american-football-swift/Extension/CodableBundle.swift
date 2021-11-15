//
//  CodableBundle.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 15/11/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. Localizar el archivo json
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Fallo el localizar \(file) en el bundle")
        }
        
        //2. Crear la propiedad data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Error al cargar \(file) desde el bundle")
        }
        
        //3. Crear el decoder
        let decoder = JSONDecoder()
        
        //4. Crear una propiedad para el decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Fallo en el decode \(file) desde el bundle")
        }
        
        //5. retornar el valor de uso de la data
        return decodedData
    }
 
}
