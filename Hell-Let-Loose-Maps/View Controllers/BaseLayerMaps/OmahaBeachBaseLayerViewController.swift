//
//  OmahaBeachBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class OmahaBeachBaseLayerViewController: BaseViewController {

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
               self.navigationController?.present(controller, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .OmahaBeach, layerType: .OmahaBeachBaseLayer)
        scrollView.delegate = self
    }
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
}
//MARK:- Sizing
extension OmahaBeachBaseLayerViewController {
    
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
extension OmahaBeachBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension OmahaBeachBaseLayerViewController: UpdateMapDelegate {
    
    func loadStrongpointsLayer() {
        print("Carentan Strongpoints!!")
        self.imageView.image = getMap(mapName: .OmahaBeach, layerType: .OmahaBeachStrongpoints)
    }
    
    func loadTACLayer() {
        print("Carentan TAC!!")

        self.imageView.image = getMap(mapName: .OmahaBeach, layerType: .OmahaBeachTAC)

    }
}
