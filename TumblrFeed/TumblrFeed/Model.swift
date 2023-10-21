//
//  Model.swift
//  TumblrFeed
//
//  Created by libraries on 10/19/23.
//

import Foundation

struct TumblrResponse: Decodable {
    let meta: Meta
    let response: Response
}

struct Meta: Decodable {
    let status: Int
    let msg: String
}

struct Response: Decodable {
    let blog: Blog
    let posts: [TumblrPost]
}

struct Blog: Decodable {
    let name: String
}


struct TumblrPost: Decodable {
    let blogName: String?
    let date: String?
    let noteCount: Double?
    let photo: String?
    let description: String?

    private enum CodingKeys: String, CodingKey {
        case description, date
        case blogName = "blog_name"
        case noteCount = "note_count"
        case photo = "photo_path"
        
    }
}
