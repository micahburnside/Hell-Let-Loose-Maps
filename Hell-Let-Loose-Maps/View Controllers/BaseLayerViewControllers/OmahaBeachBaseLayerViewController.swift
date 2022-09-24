//
//  OmahaBeachBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class OmahaBeachBaseLayerViewController: BaseViewController {
    
    var updateOmahaBeachMapDelegate: UpdateOmahaBeachMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewBeaumontRoad: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewCrossroads: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewLesIsles: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewRearBattery: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewChurchRoad: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewTheOrchards: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewWestVierville: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewViervilleSurMer: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewArtilleryBattery: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewWN73: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewWN71: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewWN70: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewDogGreen: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewTheDraw: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewDogWhite: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewBeaumontRoad)
        imageView.addSubview(imageViewCrossroads)
        imageView.addSubview(imageViewLesIsles)
        imageView.addSubview(imageViewRearBattery)
        imageView.addSubview(imageViewChurchRoad)
        imageView.addSubview(imageViewTheOrchards)
        imageView.addSubview(imageViewWestVierville)
        imageView.addSubview(imageViewViervilleSurMer)
        imageView.addSubview(imageViewArtilleryBattery)
        imageView.addSubview(imageViewWN73)
        imageView.addSubview(imageViewWN71)
        imageView.addSubview(imageViewWN70)
        imageView.addSubview(imageViewDogGreen)
        imageView.addSubview(imageViewTheDraw)
        imageView.addSubview(imageViewDogWhite)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBeaumontRoad.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBeaumontRoad.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBeaumontRoad.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBeaumontRoad.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCrossroads.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewCrossroads.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewCrossroads.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewCrossroads.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLesIsles.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLesIsles.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLesIsles.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLesIsles.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRearBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRearBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRearBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRearBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewChurchRoad.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewChurchRoad.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewChurchRoad.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewChurchRoad.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheOrchards.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheOrchards.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheOrchards.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheOrchards.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWestVierville.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWestVierville.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWestVierville.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWestVierville.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewViervilleSurMer).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewViervilleSurMer).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewViervilleSurMer).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewViervilleSurMer).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewArtilleryBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewArtilleryBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewArtilleryBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewArtilleryBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWN73.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWN73.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWN73.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWN73.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWN71.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWN71.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWN71.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWN71.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWN70.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWN70.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWN70.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWN70.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDogGreen.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDogGreen.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDogGreen.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDogGreen.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheDraw.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheDraw.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheDraw.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheDraw.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDogWhite.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDogWhite.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDogWhite.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDogWhite.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .OmahaBeach, layerType: .OmahaBeachTAC)
        scrollView.delegate = self
        scrollView.maximumZoomScale = 5.0
        createImageViewLayerSubViews()
        doubleTapGesture()
    }
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showOmahaBeachStrongpoints()
        hideOmahaBeachStrongpoints()
    }

//MARK: - Gesture Recognizers
        func doubleTapGesture() {
            let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(doubleTapPressed))
            doubleTapRecognizer.numberOfTapsRequired = 2
                view.addGestureRecognizer(doubleTapRecognizer)
        }

        @objc private func doubleTapPressed(_ sender: UITapGestureRecognizer) {
            // 1
            let pointInView = sender.location(in: imageView)
           
            // 2
            let scale = min(scrollView.zoomScale * 2, scrollView.maximumZoomScale)
            
            // 3
            if scale != scrollView.zoomScale {

                let scrollViewSize = scrollView.bounds.size
                let w = scrollViewSize.width / scale
                let h = scrollViewSize.height / scale
                let x = pointInView.x - (w / 2.0)
                let y = pointInView.y - (h / 2.0)
               
                let rectToZoomTo = CGRectMake(x, y, w, h);
               
                // 4

                scrollView.zoom(to: rectToZoomTo, animated: true)
                
            } else {
                if scale == scrollView.maximumZoomScale {
                    scrollView.setZoomScale(scrollView.minimumZoomScale, animated: true)
                }
            }
        }
    
    @IBAction func shareOmahaBeachMapLayer(_ sender: UIBarButtonItem) {
        
        guard let screenshot = self.snapshotOmahaBeachMap() else { return }
        
        shareOmahaBeachMapImage(screenshot: screenshot)
        
        func shareOmahaBeachMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
        
    }
    
    func snapshotOmahaBeachMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectOmahaBeachLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectOmahaBeachLayersViewController") as? SelectOmahaBeachLayersViewController {
              controller.updateOmahaBeachMapDelegate = self
              controller.modalPresentationStyle = .popover
              if let popover = controller.popoverPresentationController {
                  popover.barButtonItem = sender
                  let sheet = popover.adaptiveSheetPresentationController
                  sheet.detents = [
                      .large()
                  ]
                          sheet.largestUndimmedDetentIdentifier = .medium
                          sheet.prefersScrollingExpandsWhenScrolledToEdge = false
                          sheet.prefersEdgeAttachedInCompactHeight = true
                          sheet.widthFollowsPreferredContentSizeWhenEdgeAttached = true
                  sheet.prefersGrabberVisible = true
              }
              self.navigationController?.present(controller, animated: true)
       }
    }
    
    func showOmahaBeachStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_BEAUMONTROAD) {
            self.loadOmahaBeachBeaumontRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CROSSROADS) {
            self.loadOmahaBeachCrossroads()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_LESISLES) {
            self.loadOmahaBeachLesIsles()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_REARBATTERY) {
            self.loadOmahaBeachRearBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CHURCHROAD) {
            self.loadOmahaBeachChurchRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEORCHARDS) {
            self.loadOmahaBeachTheOrchards()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WESTVIERVILLE) {
            self.loadOmahaBeachWestVierville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_VIERVILLESURMER) {
            self.loadOmahaBeachViervilleSurMer()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_ARTILLERYBATTERY) {
            self.loadOmahaBeachArtilleryBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN73) {
            self.loadOmahaBeachWN73()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN70) {
            self.loadOmahaBeachWN71()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN71) {
            self.loadOmahaBeachWN70()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGGREEN) {
            self.loadOmahaBeachDogGreen()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEDRAW) {
            self.loadOmahaBeachTheDraw()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGWHITE) {
            self.loadOmahaBeachDogWhite()
        }
    }
    
    func hideOmahaBeachStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_BEAUMONTROAD) == false {
            self.removeOmahaBeachBeaumontRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CROSSROADS) == false {
            self.removeOmahaBeachCrossroads()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_LESISLES) == false {
            self.removeOmahaBeachLesIsles()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_REARBATTERY) == false {
            self.removeOmahaBeachRearBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CHURCHROAD) == false {
            self.removeOmahaBeachChurchRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEORCHARDS) == false {
            self.removeOmahaBeachTheOrchards()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WESTVIERVILLE) == false {
            self.removeOmahaBeachWestVierville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_VIERVILLESURMER) == false {
            self.removeOmahaBeachViervilleSurMer()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_ARTILLERYBATTERY) == false {
            self.removeOmahaBeachArtilleryBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN73) == false {
            self.removeOmahaBeachWN73()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN70) == false {
            self.removeOmahaBeachWN71()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN71) == false {
            self.removeOmahaBeachWN70()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGGREEN) == false {
            self.removeOmahaBeachDogGreen()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEDRAW) == false {
            self.removeOmahaBeachTheDraw()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGWHITE) == false {
            self.removeOmahaBeachDogWhite()
        }
    }
    
}
//MARK:- Sizing
extension OmahaBeachBaseLayerViewController {
    
    func updateMinZoomScaleForSize(_ size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let minScale = min(widthScale, heightScale)
          
        scrollView.minimumZoomScale = minScale
        scrollView.zoomScale = minScale
        
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

extension OmahaBeachBaseLayerViewController: UpdateOmahaBeachMapDelegate {
    func removeOmahaBeachBeaumontRoad() {
        self.imageViewBeaumontRoad.isHidden = true
    }
    
    func removeOmahaBeachCrossroads() {
        self.imageViewCrossroads.isHidden = true
    }
    
    func removeOmahaBeachLesIsles() {
        self.imageViewLesIsles.isHidden = true
    }
    
    func removeOmahaBeachRearBattery() {
        self.imageViewRearBattery.isHidden = true
    }
    
    func removeOmahaBeachChurchRoad() {
        self.imageViewChurchRoad.isHidden = true
    }
    
    func removeOmahaBeachTheOrchards() {
        self.imageViewTheOrchards.isHidden = true
    }
    
    func removeOmahaBeachWestVierville() {
        self.imageViewWestVierville.isHidden = true
    }
    
    func removeOmahaBeachViervilleSurMer() {
        self.imageViewViervilleSurMer.isHidden = true
    }
    
    func removeOmahaBeachArtilleryBattery() {
        self.imageViewArtilleryBattery.isHidden = true
    }
    
    func removeOmahaBeachWN73() {
        self.imageViewWN73.isHidden = true
    }
    
    func removeOmahaBeachWN71() {
        self.imageViewWN71.isHidden = true
    }
    
    func removeOmahaBeachWN70() {
        self.imageViewWN70.isHidden = true
    }
    
    func removeOmahaBeachDogGreen() {
        self.imageViewDogGreen.isHidden = true
    }
    
    func removeOmahaBeachTheDraw() {
        self.imageViewTheDraw.isHidden = true
    }
    
    func removeOmahaBeachDogWhite() {
        self.imageViewDogWhite.isHidden = true
    }
    
    func loadOmahaBeachBeaumontRoad() {
        self.imageViewBeaumontRoad.isHidden = false
        self.imageViewBeaumontRoad.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachBeaumontRoad)
    }
    
    func loadOmahaBeachCrossroads() {
        self.imageViewCrossroads.isHidden = false
        self.imageViewCrossroads.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachCrossroads)
    }
    
    func loadOmahaBeachLesIsles() {
        self.imageViewLesIsles.isHidden = false
        self.imageViewLesIsles.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachLesIsles)
    }
    
    func loadOmahaBeachRearBattery() {
        self.imageViewRearBattery.isHidden = false
        self.imageViewRearBattery.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachRearBattery)
    }
    
    func loadOmahaBeachChurchRoad() {
        self.imageViewChurchRoad.isHidden = false
        self.imageViewChurchRoad.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachChurchRoad)
    }
    
    func loadOmahaBeachTheOrchards() {
        self.imageViewTheOrchards.isHidden = false
        self.imageViewTheOrchards.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachTheOrchards)
    }
    
    func loadOmahaBeachWestVierville() {
        self.imageViewWestVierville.isHidden = false
        self.imageViewWestVierville.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachWestVierville)
    }
    
    func loadOmahaBeachViervilleSurMer() {
        self.imageViewViervilleSurMer.isHidden = false
        self.imageViewViervilleSurMer.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachViervilleSurmer)
    }
    
    func loadOmahaBeachArtilleryBattery() {
        self.imageViewArtilleryBattery.isHidden = false
        self.imageViewArtilleryBattery.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachArtilleryBattery)
    }
    
    func loadOmahaBeachWN73() {
        self.imageViewWN73.isHidden = false
        self.imageViewWN73.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachWN73)
    }
    
    func loadOmahaBeachWN71() {
        self.imageViewWN71.isHidden = false
        self.imageViewWN71.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachWN71)
    }
    
    func loadOmahaBeachWN70() {
        self.imageViewWN70.isHidden = false
        self.imageViewWN70.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachWN70)
    }
    
    func loadOmahaBeachDogGreen() {
        self.imageViewDogGreen.isHidden = false
        self.imageViewDogGreen.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachDogGreen)
    }
    
    func loadOmahaBeachTheDraw() {
        self.imageViewTheDraw.isHidden = false
        self.imageViewTheDraw.image = getStrongpoint(strongpoint: .StrongpointOmahaBeachTheDraw)
    }
    
    func loadOmahaBeachDogWhite() {
        self.imageViewDogWhite.isHidden = false
        self.imageViewDogWhite.image = getStrongpoint(strongpoint: .StrongpoinOmahaBeachtDogWhite)
    }
}

extension OmahaBeachBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
