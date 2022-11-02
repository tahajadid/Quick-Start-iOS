//
//  HomeViewController.swift
//  Quick-Start-iOS
//
//  Created by taha_jadid on 16/10/2022.
//

import UIKit

class HomeViewController: UIViewController {

    private var news : [News] = [News]()

    override func viewDidLoad() {
        super.viewDidLoad()

        APICaller().getReques()
        /*
        APICaller().getNews { [weak self] result in
            switch result {
            case .success(let news):
                self?.news = news
                print("(( in success))")

                print(self?.news)

            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
         */

    }



}
