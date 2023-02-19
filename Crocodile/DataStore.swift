//
//  DataStore.swift
//  Crocodile
//
//  Created by Buba on 12.02.2023.
//

class DataStore {
    static let shared = DataStore()
    
    let words = [
        "желтые нарциссы",
        "ежедневник",
        "субботник",
        "календарь",
        "мыльный пузырь",
        "леопард",
        "сауна",
        "режим дня",
        "бензопила",
        "созвездие"
    ].shuffled()
    
    private init() {}
}
