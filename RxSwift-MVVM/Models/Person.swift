//
//  Person.swift
//  RxSwift-MVVM
//
//  Created by Pankaj Bhardwaj on 05/06/20.
//  Copyright © 2020 pankaj. All rights reserved.
//

import Foundation

final class Person {
    let name: String
    let club: String
    let avatar: String
    init(name: String, club: String, avatar: String) {
         self.name = name
         self.club = club
         self.avatar = avatar
    }
}
