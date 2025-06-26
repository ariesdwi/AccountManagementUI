
//
//  AppleStyleAccountView.swift
//  AccountManagementUI
//
//  Created by PT Siaga Abdi Utama on 26/06/25.
//

import SwiftUI

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

@available(iOS 14.0, *)
public struct AppleStyleAccountView: View {
    public let user: UserProfile
    public let sections: [AccountSection]

    public init(user: UserProfile, sections: [AccountSection]) {
        self.user = user
        self.sections = sections
    }

    
    public var body: some View {
        NavigationView {
            List {
                // Header
                Section {
                    VStack(spacing: 8) {
                        ZStack {
                            Circle()
                                .fill(Color.blue.opacity(0.2))
                                .frame(width: 80, height: 80)

                            Text(user.initials)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }

                        Text(user.fullName)
                            .font(.title3)
                            .fontWeight(.semibold)

                        Text(user.email)
                            .font(.subheadline)
                            .foregroundColor(.gray)

                        Text("\(user.points) Poin")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                }

                // Dynamic Sections
                ForEach(sections) { section in
                    Section {
                        ForEach(section.items) { item in
                            SettingsRow(
                                icon: item.icon,
                                label: item.label,
                                value: item.value
                            )
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Account")
        }
    }
}

// MARK: - Models
public struct AccountSection: Identifiable {
    public let id = UUID()
    public let items: [AccountItem]

    public init(items: [AccountItem]) {
        self.items = items
    }
}

public struct AccountItem: Identifiable {
    public let id = UUID()
    public let icon: String
    public let label: String
    public let value: String?

    public init(icon: String, label: String, value: String? = nil) {
        self.icon = icon
        self.label = label
        self.value = value
    }
}

// MARK: - Subview
struct SettingsRow: View {
    let icon: String
    let label: String
    let value: String?

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .frame(width: 24)

            Text(label)

            Spacer()

            if let value = value {
                Text(value).foregroundColor(.gray)
            }

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.system(size: 14))
        }
    }
}
