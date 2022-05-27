//
//  CarentanBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class CarentanBaseLayerViewController: BaseViewController {


    var updateMapDelegate: UpdateMapDelegate!

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var layerButton: UIBarButtonItem!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
         let storyboard = UIStoryboard.init(name: "SelectLayer", bundle: nil)
           if let controller = storyboard.instantiateViewController(identifier: "SelectLayerViewController") as? SelectLayerViewController {
               controller.updateMapDelegate = self
               self.navigationController?.present(controller, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .Carentan, layerType: .CarentanBaseLayer)
        scrollView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    
}

//MARK: - Sizing

extension CarentanBaseLayerViewController {
    
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
extension CarentanBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension CarentanBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}


extension CarentanBaseLayerViewController: UpdateMapDelegate {
    
    func loadStrongpointsLayer() {
        self.imageView.image = getMap(mapName: .Carentan, layerType: .CarentanStrongpoints)
    }
    
    func loadTACLayer() {
        self.imageView.image = getMap(mapName: .Carentan, layerType: .CarentanTAC)

    }
}
