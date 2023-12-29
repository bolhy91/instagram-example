//
//  UserModel.swift
//  InstagramExample
//
//  Created by Bolivar Cortes on 12/29/23.
//

import Foundation

struct UserModel : Identifiable {
    let id = UUID()
    let username: String
    let profilePicture: String
    let city: String
    let isVerified: Bool
    
    static func getUsers() -> [UserModel] {
        return [
            .init(username: "karennne", profilePicture: "person-1", city: "Tokyo, Japan", isVerified: true),
            .init(username: "pablo323", profilePicture: "person-2", city: "Caracas, Venezuela", isVerified: true),
            .init(username: "joshua_l", profilePicture: "person-3", city: "Miami, US", isVerified: false),
            .init(username: "themoon", profilePicture: "person-4", city: "London, UK", isVerified: false),
            .init(username: "hero_232", profilePicture: "person-5", city: "Montreal, Canada", isVerified: true),
            .init(username: "theworld_2", profilePicture: "person-6", city: "New York, US", isVerified: false),
            .init(username: "doggg", profilePicture: "person-7", city: "Beijing, China", isVerified: false),
            .init(username: "someone", profilePicture: "person-8", city: "Rome, Italy", isVerified: true),
            .init(username: "victorroldan.dev", profilePicture: "victorroldan.dev", city: "Caracas, Venezuela", isVerified: true),
        ]
    }
}
