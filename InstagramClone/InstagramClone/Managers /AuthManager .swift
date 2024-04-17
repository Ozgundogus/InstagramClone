//
//  AuthManager .swift
//  InstagramClone
//
//  Created by Ozgun Dogus on 30.03.2024.
//

import FirebaseAuth
import Foundation

final class AuthManager {
    
    static let shared = AuthManager() // Singleton yapısını kullanarak sadece bir tane instance oluşturulmasını sağlar.
    
    private init() {}
    
    let auth = Auth.auth()
    
    public var ısSignedIn: Bool {
        return auth.currentUser != nil
    } // computed property kullanarak kullanıcının oturum açıp açmadığını kontrol ediyoruz.

    public func signIn (
        email : String ,
        password : String ,
        completion : @escaping (Result<User,Error>) -> Void
    ){
        
    } // Oturum açma işlemini gerçekleştiren fonksiyon
    
    public func signUp (
        email : String ,
        username : String ,
        password : String ,
        profilePicture : Data? , // Kullanıcının profil resmini almak için Data tipinde bir parametre ekliyoruz.
        completion : @escaping (Result<User,Error>) -> Void
    ){
        
    } // Kayıt olma işlemini gerçekleştiren fonksiyon
    
    public func signOut (completion : @escaping (Bool) -> Void) {
         
    } // Oturum kapatma işlemini gerçekleştiren fonksiyon
    
}
