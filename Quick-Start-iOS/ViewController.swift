//
//  ViewController.swift
//  Quick-Start-iOS
//
//  Created by taha_jadid on 16/10/2022.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    private var myAnimationView: AnimationView?

    @IBOutlet weak var animateView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myAnimationView = .init(name: "new_ball")
        myAnimationView!.frame = animateView.bounds
        myAnimationView!.contentMode = .scaleAspectFill
        myAnimationView!.loopMode = .repeat(1.0)
        animateView.addSubview(myAnimationView!)
        myAnimationView!.play()
            
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {

            if let navigationController = self.navigationController {
              navigationController.pushViewController(HomeViewController(), animated: true)
            }
            
        }

    }


}

