//
//  APICaller.swift
//  Quick-Start-iOS
//
//  Created by taha_jadid on 16/10/2022.
//

import Foundation
import Alamofire

struct Constants {
    static let baseURL = "http://localhost:8080"
    static let baseURL2 = "http://localhost:8080/api/v1/news/"
}


enum APIError : Error {
    case failedTogetData
}

class APICaller {
    
    static let shared = APICaller()

    
    func getNews(completion: @escaping (Result<[News], Error>) -> Void) {
        
        guard let url = URL(string: "http://localhost:8080/api/v1/news/") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                print("!! OK")
                let results = try JSONDecoder().decode(NewsResponse.self, from: data)
                print(results.results[0].title ?? "")
                completion(.success(results.results))
                                                  
            } catch {
                print("!! catch")
                completion(.failure(error))
            }
        }
        
        task.resume()

        
    }
    
    
    /*
    func getReques(){
        
        let request = AF.request("\(Constants.baseURL2)")
                                 
        request.responseJSON {  (data) in
            print(data)
            let welcome = try? JSONDecoder().decode(Welcome.self, from: data.data!)
            welcome.getNews { Result<[News], Error> in
                print("Result.success()")
            }
            print("--- Last --- : ",welcome)
        }
    }

     */
    
}

