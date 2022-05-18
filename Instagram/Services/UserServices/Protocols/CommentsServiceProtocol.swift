//
//  CommentsServiceProtocol.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

protocol CommentsServiceProtocol: AnyObject {
    func sendComment(userPost: UserPost, text: String, completion: @escaping () -> Void)
    func fetchSentUserComment(userPost: UserPost, completion: @escaping (UserComment) -> Void)
    
    func fetchUserComments(userPost: UserPost, completion: @escaping ([UserComment]) -> Void)
    func requestUserComments(userPost: UserPost, completion: @escaping ([UserComment]) -> Void)
}
