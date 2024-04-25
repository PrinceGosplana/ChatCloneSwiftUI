//
//  UserStatus.swift
//  ChatCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 25.04.2024.
//

import Foundation

enum UserStatus: Int, CaseIterable, Identifiable {
    case notConfigured, available, busy, school, movies, work, batteryLow, meeting, gym, sleeping, urgentCallsOnly

    var id: Int { rawValue }

    var title: String {
        switch self {
        case .notConfigured: "Click here to update your status"
        case .available: "Available"
        case .busy: "Busy"
        case .school: "At school"
        case .movies: "At the movies"
        case .work: "At work"
        case .batteryLow: "Battery about to die"
        case .meeting: "In a meeting"
        case .gym: "At the gym"
        case .sleeping: "Sleeping"
        case .urgentCallsOnly: "Urgent calls only"
        }
    }
}

