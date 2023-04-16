//
//  UserViewModel.swift
//  ArrayLearning
//
//  Created by Arun Skyraan on 11/03/23.
//

import Foundation


class UserViewModel: ObservableObject {
    
    @Published var dataArray: [UserDataModel] = []
    @Published var filteredArray: [UserDataModel] = []
    @Published var mappedArray: [String] = []
    
    init() {
        getUsers()
        updateFilteredArray()
    }
    
    func updateFilteredArray() { //sort //filter //map
        
//   sort
/*
//junior developer mind
        filteredArray = dataArray.sorted { user1, user2 in
            return user1.userPoints > user2.userPoints //sorting by points
        }
//senior developer mind
        filteredArray = dataArray.sorted(by: { $0.userPoints > $1.userPoints }) //sorting by points
        */
        
//   filter
        /*
//        filteredArray = dataArray.filter({ user in
////            return user.userPoints > 19
//            return user.isVerifiedUser
//        })
        filteredArray = dataArray.filter({ $0.userPoints >= 10 && $0.isVerifiedUser })
         */
        
//   map
        /*
        mappedArray = dataArray.map({ user in
            return user.userName
        })
        
        mappedArray = dataArray.map({ $0.userName })
         */
        
//        let sort = dataArray.sorted(by: { $0.userPoints > $1.userPoints})
//        let filter = dataArray.filter({ $0.isVerifiedUser})
//        let map = dataArray.map({ $0.userName })
        
        mappedArray = dataArray
                        .sorted(by: { $0.userPoints > $1.userPoints})
                        .filter({ $0.isVerifiedUser})
                        .map({ $0.userName })
        
    }
    
    
    func getUsers() {
        
        let user1 = UserDataModel(userName: "Arun", userPoints: 10, isVerifiedUser: true)
        let user2 = UserDataModel(userName: "Gokul", userPoints: 20, isVerifiedUser: true)
        let user3 = UserDataModel(userName: "Bharathi", userPoints: 13, isVerifiedUser: false)
        let user4 = UserDataModel(userName: "Manoj", userPoints: 15, isVerifiedUser: false)
        let user5 = UserDataModel(userName: "Kathir", userPoints: 10, isVerifiedUser: true)
        
        self.dataArray.append(contentsOf: [
        user1,
        user2,
        user3,
        user4,
        user5,
        ])

    }
}
