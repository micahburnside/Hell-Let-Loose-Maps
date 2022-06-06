//
//  FoyBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class FoyBaseLayerViewController: BaseViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectLayer", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectLayerViewController") as? SelectLayerViewController {
              controller.updateMapDelegate = self
              if let sheet = controller.sheetPresentationController {
                  sheet.detents = [ .medium() ]
              }
              self.navigationController?.present(controller, animated: true)
       }
    }
    
    var photoName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .Foy, layerType: .FoyBaseLayer)
        scrollView.delegate = self
    }
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
}
//MARK:- Sizing
extension FoyBaseLayerViewController {
    
    func updateMinZoomScaleForSize(_ size: CGSize) {

        scrollView.minimumZoomScale = 0.2
        scrollView.maximumZoomScale = 5.0
        
    }
    
    func updateConstraintsForSize(_ size: CGSize) {
      let yOffset = max(0, (size.height - imageView.frame.height) / 2)
      imageViewTopConstraint.constant = yOffset
      imageViewBottomConstraint.constant = yOffset

      let xOffset = max(0, (size.width - imageView.frame.width) / 2)
      imageViewLeadingConstraint.constant = xOffset
      imageViewTrailingConstraint.constant = xOffset

      view.layoutIfNeeded()
    }
}

//MARK:- UIScrollViewDelegate
extension FoyBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension FoyBaseLayerViewController: UpdateMapDelegate {
    func removeStrongpoint() {
    
    }
    
    func loadStrongpoint1() {
        
    }
    
    func loadStrongpoint2() {
        
    }
    
    func loadStrongpoint3() {
        
    }
    
    func loadStrongpoint4() {
        
    }
    
    func loadStrongpoint5() {
        
    }
    
    func loadStrongpoint6() {
        
    }
    
    func loadStrongpoint7() {
        
    }
    
    func loadStrongpoint8() {
        
    }
    
    func loadStrongpoint9() {
        
    }
    
    func loadStrongpoint10() {
        
    }
    
    func loadStrongpoint11() {
        
    }
    
    func loadStrongpoint12() {
        
    }
    
    func loadStrongpoint13() {
        
    }
    
    func loadStrongpoint14() {
        
    }
    
    func loadStrongpoint15() {
    
    }
    
    
    func loadStrongpointsLayer() {
        self.imageView.image = getMap(mapName: .Foy, layerType: .FoyStrongpoints)
    }
    
    func loadTACLayer() {
        self.imageView.image = getMap(mapName: .Foy, layerType: .FoyTAC)

    }
    
    func loadBaseLayer() {
        self.imageView.image = getMap(mapName: .Foy, layerType: .FoyBaseLayer)
    }
}
