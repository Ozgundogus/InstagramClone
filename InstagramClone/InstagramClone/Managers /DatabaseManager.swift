//
//  DatabaseManager.swift
//  InstagramClone
//
//  Created by Ozgun Dogus on 30.03.2024.
//


import Foundation
import FirebaseFirestore

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private init() {}
    
    let database = Firestore.firestore()
    
}

