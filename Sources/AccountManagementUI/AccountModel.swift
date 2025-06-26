//
//  AccountModel.swift
//  AccountManagementUI
//
//  Created by PT Siaga Abdi Utama on 26/06/25.
//

import Foundation

public struct UserProfile {
    public let initials: String
    public let fullName: String
    public let email: String
    public let points: Int

    public init(initials: String, fullName: String, email: String, points: Int) {
        self.initials = initials
        self.fullName = fullName
        self.email = email
        self.points = points
    }
}
