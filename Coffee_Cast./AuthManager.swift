//
//  AuthManager.swift
//  Coffee_Cast.
//
//  Created by 소범석 on 2022/03/14.
//

import FirebaseAuth
import Foundation

class AuthManager {
    static let shared = AuthManager()
    
    private let auth = Auth.auth()
    
    public func startAuth(phoneNumber: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    public func verifyCode(smsCode: String, completion: @escaping (Bool) -> Void) {
        
    }
}
