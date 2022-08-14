//
//  StorageManager.swift
//  MyTikTok
//
//  Created by Eric Grant on 11.08.2022.
//

import Foundation
import FirebaseAuth

final class AuthManager {
    public static let shared = AuthManager()
    
    private init() {}
    
    enum SignInMethod {
        case email
        case facebook
        case google
    }
    
    // Public
    
    public func signIn(with method: SignInMethod) {}
    
    public func signOut() {}
    
}
