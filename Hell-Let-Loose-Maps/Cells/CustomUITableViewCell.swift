//
//  CustomUITableViewCell.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import Foundation
import UIKit

class CustomUITableViewCell: UITableViewCell {
    
    func addAccessoryView() {
        self.accessoryType = .disclosureIndicator
    }
    
    func addUISwitch() {
        self.accessoryView = UISwitch()
    }

    
    @IBInspectable var primaryText: String = "" {
        didSet {
            var content = defaultContentConfiguration()

            // Configure content.
            content.text = primaryText
            content.secondaryText = content.secondaryText
            
            content.attributedText = NSAttributedString(string: primaryText, attributes:  [ NSAttributedString.Key.foregroundColor: UIColor.white ])
            
            content.secondaryAttributedText = NSAttributedString(string: secondaryText, attributes:  [ NSAttributedString.Key.foregroundColor: UIColor.lightGray ])

            content.image = content.image
            contentConfiguration = content
            
            self.setContentViewParams(content: content)
        }
    }
    
    @IBInspectable var secondaryText: String = "" {
        didSet {
            var content = defaultContentConfiguration()

            // Configure content.
            content.text = content.text
            content.secondaryText = content.secondaryText
            
            content.image = content.image

            contentConfiguration = content
            self.setContentViewParams(content: content)

        }
    }
    
    @IBInspectable var leftImage: UIImage = UIImage.init() {
        didSet {
            var content = defaultContentConfiguration()

            // Configure content.
            content.image = leftImage
            content.text = content.text
            content.secondaryText = content.secondaryText
            self.setContentViewParams(content: content)

        }
    }
    
    func setContentViewParams(content: UIListContentConfiguration) {
        var content = content
        content.attributedText = NSAttributedString(string: primaryText, attributes:  [ NSAttributedString.Key.foregroundColor: UIColor.white ])
        
        content.secondaryAttributedText = NSAttributedString(string: secondaryText, attributes:  [ NSAttributedString.Key.foregroundColor: UIColor.lightGray ])
        
        contentConfiguration = content
    }
}
extension UITableViewCell {
    static func getCell(tableView: UITableView, indexPath: IndexPath) -> Self {
        if let cell = tableView.dequeueReusableCell(withIdentifier: self.className, for: indexPath) as? Self {
            return cell
        }
        return .init()
    }
    
    static func getXib(bundle: Bundle?) -> UINib {
        return UINib(nibName: self.className, bundle: bundle)
    }
    
    func getClassName() -> String {
        return Self.className
    }
}

