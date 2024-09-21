//
//  Car.swift
//  weelz
//
//  Created by Samy Mehdid on 21/9/2024.
//

import Foundation

struct Car: Codable, Identifiable {
    let make: String
    let model: String
    let doorsCount: Int
    let year: Int
    let conditioning: Bool
    let transmission: Transmission
    let engineType: EngineType
    let rating: Double
    let horsePower: Int
    let speedTest: Double
    
    enum Transmission: String, Codable {
        case automatic
        case manual
    }
    
    enum EngineType: String, Codable {
        case petrol
        case diesel
    }
    
    var id: UUID { UUID() }
    
    static var sample = Car(
        make: "Toyota",
        model: "Corolla",
        doorsCount: 4,
        year: 2020,
        conditioning: true,
        transmission: .automatic,
        engineType: .petrol,
        rating: 4.5,
        horsePower: 110,
        speedTest: 10.9
    )
}
