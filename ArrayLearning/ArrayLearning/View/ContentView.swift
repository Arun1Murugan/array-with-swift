//
//  ContentView.swift
//  ArrayLearning
//
//  Created by Arun Skyraan on 11/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var uservm = UserViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(uservm.mappedArray, id: \.self) { user in
                    Text(user)
                }
//                ForEach(uservm.filteredArray) { user in
//                    VStack(alignment: .leading) {
//                        Text("\(user.userName)")
//                        HStack {
//                            Text("\(user.userPoints)")
//                            Spacer()
//                            if user.isVerifiedUser {
//                                Image(systemName: "flame.fill")
//                            }
//                        }
//                    }
//                    .foregroundColor(Color.white)
//                    .padding()
//                    .background(Color.blue.opacity(0.8).cornerRadius(20))
//                    .padding(.horizontal)
//                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
