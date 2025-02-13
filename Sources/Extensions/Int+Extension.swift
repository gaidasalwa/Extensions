// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

extension Int {

    func minutesSince() -> Int {
        let timestampSeconds = TimeInterval(self) / 1000.0
        let date = Date(timeIntervalSince1970: timestampSeconds)
        let currentDate = Date()
        
        let difference = Calendar.current.dateComponents([.minute], from: date, to: currentDate)
        
        return difference.minute ?? 0
    }
}
