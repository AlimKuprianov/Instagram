//
//  SearchServiceProtocol.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

protocol SearchServiceProtocol: AnyObject {
    var previousSearchExist: Bool { get }
    
    func searchUsers(by username: String, completion: @escaping (Result<[User], Error>) -> Void)
    func requestNextUsers(completion: @escaping (Result<[User], Error>) -> Void)
    func refreshPreviousSearch(completion: @escaping (Result<[User], Error>) -> Void)
    func clearPreviousSearch()
}
