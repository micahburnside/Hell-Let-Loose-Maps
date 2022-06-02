//
//  UserDefaultsManager.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/31/22.
//

import Foundation

class StoredData: NSObject {
    static let shared = StoredData()
    
    /// Get access token and refresh token
    func getToken(tokenType: StoredDataKeys) -> String {
        return UserDefaults.standard.string(forKey: tokenType.rawValue) ?? ""
    }
    /// Get TestUser Country Code, Phone Number, Email, and Password Keys
    func getTestUserInfo(detailType: StoredUserKeys) -> String {
        return UserDefaults.standard.string(forKey: detailType.rawValue) ?? ""
    }
    /// Get Supabase Developer Credentials
    func getSupbaseDevDetails(detailType: StoredSupabaseDevKeys) -> String {
        return UserDefaults.standard.string(forKey: detailType.rawValue) ?? ""
    }
    
    /// Saves Test User Values to User Defaults
    func setTestUserDefaults(countrycode: String, phoneNumber: String, email: String, password: String) {
        UserDefaults.standard.set(countrycode, forKey: StoredUserKeys.COUNTRY_CODE.rawValue)
        UserDefaults.standard.set(phoneNumber, forKey: StoredUserKeys.PHONE_NUMBER.rawValue)
        UserDefaults.standard.set(email, forKey: StoredUserKeys.EMAIL.rawValue)
        UserDefaults.standard.set(password, forKey: StoredUserKeys.PASSWORD.rawValue)
    }
    
    /// Set Developer Credentials
    func setTokens(accessToken: String, refreshToken: String) {
        UserDefaults.standard.set(accessToken, forKey: StoredDataKeys.ACCESS_TOKEN.rawValue)
        UserDefaults.standard.set(refreshToken, forKey: StoredDataKeys.REFRESH_TOKEN.rawValue)
    }

    func setSupaBaseDevDetails(apiKey: String, databaseURL: String) {
        UserDefaults.standard.set(apiKey, forKey: StoredSupabaseDevKeys.API_KEY.rawValue)
        UserDefaults.standard.set(databaseURL, forKey: StoredSupabaseDevKeys.DEV_DATABASE_URL.rawValue)
    }
    
    /// Supabase Response: Access Token, Refresh Token Keys
    enum StoredDataKeys: String {
        case ACCESS_TOKEN, REFRESH_TOKEN
    }
    
    /// Test User Country Code, Phone Number, Email, and Password Keys
    enum StoredUserKeys: String {
        case COUNTRY_CODE, PHONE_NUMBER, EMAIL, PASSWORD
    }
    
    /// Supabase Developer API Key, Database URL Key Save
    enum StoredSupabaseDevKeys: String {
        case API_KEY, DEV_DATABASE_URL
    }

}
