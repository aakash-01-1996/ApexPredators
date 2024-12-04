//
//  Predators.swift
//  ApexPredators
//
//  Created by Aakash Ambodkar
//

import Foundation

class Predators {
    // Decode the Data
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData() {
        if let url = Bundle.main.url(forResource: "apexPredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            }
            catch {
                print("Error decoding JSON data: \(error)")
            }
        }
    }
}

