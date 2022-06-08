//
//  UtahBeachBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class UtahBeachBaseLayerViewController: BaseViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    var photoName: String?
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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = getMap(mapName: .UtahBeach, layerType: .UtahBeachBaseLayer)
        scrollView.delegate = self
    }
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
}

//MARK:- Sizing
extension UtahBeachBaseLayerViewController {
    
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
extension UtahBeachBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension UtahBeachBaseLayerViewController: UpdateMapDelegate {
    func removeStrongpoint1() {
        
    }
    
    func removeStrongpoint2() {
        
    }
    
    func removeStrongpoint3() {
        
    }
    
    func removeStrongpoint4() {
        
    }
    
    func removeStrongpoint5() {
        
    }
    
    func removeStrongpoint6() {
        
    }
    
    func removeStrongpoint7() {
        
    }
    
    func removeStrongpoint8() {
        
    }
    
    func removeStrongpoint9() {
        
    }
    
    func removeStrongpoint10() {
        
    }
    
    func removeStrongpoint11() {
        
    }
    
    func removeStrongpoint12() {
        
    }
    
    func removeStrongpoint13() {
        
    }
    
    func removeStrongpoint14() {
        
    }
    
    func removeStrongpoint15() {
        
    }
    
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
        self.imageView.image = getMap(mapName: .UtahBeach, layerType: .UtahBeachStrongpoints)
    }
    
    func loadTACLayer() {
        self.imageView.image = getMap(mapName: .UtahBeach, layerType: .UtahBeachTAC)
    }
    
    func loadBaseLayer() {
        self.imageView.image = getMap(mapName: .UtahBeach, layerType: .UtahBeachBaseLayer)
    }
}
