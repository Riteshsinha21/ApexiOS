//
//  ClientPendingResponse.swift
//  APEX Mentality
//
//  Created by CTS on 01/08/23.
//

import Foundation

// MARK: - Welcome
struct clientPendingResponse: Codable {
    let success, status: String
    let data: [clientPendingData]?
    let message: String
}

// MARK: - Datum
struct clientPendingData: Codable {
    let userID, userName, couchID, coachName: String
    let requestStatus: String
    let profilePic: String

    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
        case userName = "user_name"
        case couchID = "couch_id"
        case coachName = "coach_name"
        case requestStatus = "request_status"
        case profilePic = "profile-pic"
    }
}
