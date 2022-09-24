//
//  BaseViewController.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import UIKit

class BaseViewController: UIViewController {
    func makeBackgroundRed() {
        self.view.backgroundColor = getTerritoryColorSelection(territoryColor: .EnemyRed)
    }
    
    func makeBackgroundBlue() {
        self.view.backgroundColor = getTerritoryColorSelection(territoryColor: .FriendlyBlue)
    }
    
    func makeBackgroundWhite() {
        self.view.backgroundColor = getTerritoryColorSelection(territoryColor: .NeutralWhite)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
//MARK: - View Controller Life Cycle Methods
    
    override func viewWillAppear(_ animated: Bool) {
                
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black

    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = .black
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

//MARK: - View Controller Navigation
    ///pushToViewController uses storyboard Names and Identiders to  push to the desired ViewController
    func pushToViewController(storyboardName: String, identifier: String) {
        let storyboard = UIStoryboard.init(name: storyboardName, bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: identifier)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    ///presentViewController uses storyboard Names and Identiders to  present the desired ViewController Modally as a popover
    func presentViewController(storyboardName: String, identifier: String) {
        let storyboard = UIStoryboard.init(name: storyboardName, bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: identifier)
        self.navigationController?.present(controller, animated: true)
    }

}
