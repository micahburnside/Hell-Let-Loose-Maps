//
//  BaseViewController.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import UIKit

class BaseViewController: UIViewController {
    var tapCount = 0
//    var imageView: UIImageView?
//    var pinchMe: UIPinchGestureRecognizer?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBaseViewController()
        
    }
    
    func setupBaseViewController() {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
            tap.numberOfTapsRequired = 2
            view.addGestureRecognizer(tap)

    }

    
    @objc func doubleTapped() {
        print("doubleTapped Pressed")

    }

    func pushToViewController(storyboardName: String, identifier: String) {
        let storyboard = UIStoryboard.init(name: storyboardName, bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: identifier)

        self.navigationController?.pushViewController(controller, animated: true)
    }

}
