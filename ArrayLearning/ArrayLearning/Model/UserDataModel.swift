//
//  UserDataModel.swift
//  ArrayLearning
//
//  Created by Arun Skyraan on 11/03/23.
//

import Foundation

struct UserDataModel: Identifiable {
    
    let id = UUID().uuidString
    let userName: String
    let userPoints: Int
    let isVerifiedUser: Bool
}
