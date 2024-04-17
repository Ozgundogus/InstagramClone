//
//  StorageManager.swift
//  InstagramClone
//
//  Created by Ozgun Dogus on 30.03.2024.
//

import Foundation
import FirebaseStorage


final class StorageManager {
    
    static let shared = StorageManager()
    
    private init() {}
    
    let storage = Storage.storage()
    
}


