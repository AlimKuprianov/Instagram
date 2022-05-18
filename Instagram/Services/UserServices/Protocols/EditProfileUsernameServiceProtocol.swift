//
//  EditProfileUsernameServiceProtocol.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

protocol EditProfileUsernameServiceProtocol: AnyObject {
    func checkUsername(_ username: String, completion: @escaping (EditProfileUsernameServiceResult) -> Void)
}

enum EditProfileUsernameServiceResult {
    case validUsername
    case invalidUsername
    case usernameExist
    case isEmptyUsername
}
