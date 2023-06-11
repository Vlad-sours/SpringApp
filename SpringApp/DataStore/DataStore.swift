//
//  DataStore.swift
//  SpringApp
//
//  Created by Vlad on 11.6.23..
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
