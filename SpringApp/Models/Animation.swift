//
//  Animation.swift
//  SpringApp
//
//  Created by Vlad on 11.6.23..
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f",force))
        duration: \(String(format: "%.02f",duration))
        delay: \(String(format: "%.02f",delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "spring",
            force: Double.random(in: 1...1.8),
            duration: Double.random(in: 0.6...1.8),
            delay: 0.7
        )
    }
}
