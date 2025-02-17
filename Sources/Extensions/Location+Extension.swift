//
//  Location.swift
//  Extensions
//
//  Created by Gaida Salwa on 11/02/2025.
//
import CoreLocation

public struct Location {
    public let latitude: Double
    public let longitude: Double

    // Ajout du constructeur public
    public init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

public extension Location {
    /// Retourne la distance en kilomètres entre `self` et une autre `Location`
    func distance(to location: Location) -> Double {
        let start = CLLocation(latitude: self.latitude, longitude: self.longitude)
        let end = CLLocation(latitude: location.latitude, longitude: location.longitude)
        let distanceMeters = start.distance(from: end)
        return round(distanceMeters / 1000.0) / 10 // Convertit en km
    }
}
