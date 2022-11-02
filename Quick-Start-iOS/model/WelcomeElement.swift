//
//  WelcomeElement.swift
//  Quick-Start-iOS
//
//  Created by taha_jadid on 16/10/2022.
//

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let idNews: Int
    let idCountry, idLeague, title, welcomeDescription: String
    let publishedDate: String

    enum CodingKeys: String, CodingKey {
        case idNews, idCountry, idLeague, title
        case welcomeDescription = "description"
        case publishedDate
    }
}

typealias Welcome = [WelcomeElement]
