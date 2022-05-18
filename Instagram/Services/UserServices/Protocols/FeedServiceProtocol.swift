//
//  FeedServiceProtocol.swift
//  Instagram
//
//  Created by Alim Kuprianov on 27.03.2022.
//

protocol FeedServiceProtocol: AnyObject {
    func fetchUserPostsDescendingByDate(completion: @escaping ([UserPost]) -> Void)
    func requestUserPosts(completion: @escaping ([UserPost]) -> Void)
    
    func observeUserFeed(completion: @escaping (UserPost) -> Void)
    func removeUserFeedObserver()
    
    func likePost(_ userPost: UserPost, at index: Int, completion: @escaping () -> Void)
    func unlikePost(_ userPost: UserPost, at index: Int, completion: @escaping () -> Void)
    
    func addPostToBookmarks(_ userPost: UserPost, at index: Int, completion: @escaping () -> Void)
    func removePostFromBookmarks(_ userPost: UserPost, at index: Int, completion: @escaping () -> Void)
}
