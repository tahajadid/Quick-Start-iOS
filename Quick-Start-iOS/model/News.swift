//
//  News.swift
//  Quick-Start-iOS
//
//  Created by taha_jadid on 16/10/2022.
//

import Foundation

struct NewsResponse: Decodable{
    let results : [News]
}

struct News: Decodable {
    let idNews: Int
    let idCountry: String?
    let idLeague: String?
    let title: String?
    let description:String?
    let publishedDate: String?
}

struct AllNews: Decodable {
  let all: [News]
}
