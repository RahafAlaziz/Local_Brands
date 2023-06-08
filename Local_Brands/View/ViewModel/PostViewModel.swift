//
//  PostViewModel.swift
//  Local_Brands
//
//  Created by lujain mohammed on 14/11/1444 AH.
//


import Foundation

class PostViewModel: ObservableObject {
    @Published var posts = [Post]()

    init() {
        posts.append(Post(id: 1, imageName: "1"))
        posts.append(Post(id: 2, imageName: "2"))
        posts.append(Post(id: 3, imageName: "3"))
        posts.append(Post(id: 4, imageName: "4"))
        posts.append(Post(id: 5, imageName: "5"))
        posts.append(Post(id: 6, imageName: "6"))
        posts.append(Post(id: 7, imageName: "7"))
        posts.append(Post(id: 8, imageName: "8"))
        posts.append(Post(id: 9, imageName: "9"))
        posts.append(Post(id: 10, imageName: "10"))
        posts.append(Post(id: 11, imageName: "11"))
        posts.append(Post(id: 12, imageName: "12"))

    }
}
