//
//  DrielBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/8/23.
//

import UIKit

class DrielBaseLayerViewController: BaseViewController {
    
    var updateDrielMapDelegate: UpdateDrielMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewOsterbeekApproach: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewRoseanderPolder: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewKasteelRosande: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewBoatyard: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewBridgeway: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewRijnBanks: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewBrickFactory: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewRailwayBridge: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewGunEmplacements: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewRietveld: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewSouthRailway: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewMiddelRoad: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewOrchards: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewSchaduwwolkenFarm: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewFields: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView0.addSubview(imageViewOsterbeekApproach)
        imageView0.addSubview(imageViewRoseanderPolder)
        imageView0.addSubview(imageViewKasteelRosande)
        imageView0.addSubview(imageViewBoatyard)
        imageView0.addSubview(imageViewBridgeway)
        imageView0.addSubview(imageViewRijnBanks)
        imageView0.addSubview(imageViewBrickFactory)
        imageView0.addSubview(imageViewRailwayBridge)
        imageView0.addSubview(imageViewGunEmplacements)
        imageView0.addSubview(imageViewRietveld)
        imageView0.addSubview(imageViewSouthRailway)
        imageView0.addSubview(imageViewMiddelRoad)
        imageView0.addSubview(imageViewOrchards)
        imageView0.addSubview(imageViewSchaduwwolkenFarm)
        imageView0.addSubview(imageViewFields)
        
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewOsterbeekApproach.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewOsterbeekApproach.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewOsterbeekApproach.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewOsterbeekApproach.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoseanderPolder.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewRoseanderPolder.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewRoseanderPolder.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewRoseanderPolder.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewKasteelRosande.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewKasteelRosande.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewKasteelRosande.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewKasteelRosande.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBoatyard.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewBoatyard.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewBoatyard.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewBoatyard.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBridgeway.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewBridgeway.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewBridgeway.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewBridgeway.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRijnBanks.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewRijnBanks.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewRijnBanks.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewRijnBanks.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBrickFactory.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewBrickFactory.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewBrickFactory.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewBrickFactory.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewRailwayBridge).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewRailwayBridge).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewRailwayBridge).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewRailwayBridge).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewGunEmplacements.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewGunEmplacements.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewGunEmplacements.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewGunEmplacements.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRietveld.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewRietveld.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewRietveld.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewRietveld.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSouthRailway.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewSouthRailway.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewSouthRailway.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewSouthRailway.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageViewLumberyard subView constraints to be equal to it's parent view imageView that is inside a scrollView
        imageViewMiddelRoad.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewMiddelRoad.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewMiddelRoad.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewMiddelRoad.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewOrchards.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewOrchards.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewOrchards.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewOrchards.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewSchaduwwolkenFarm).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewSchaduwwolkenFarm).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewSchaduwwolkenFarm).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewSchaduwwolkenFarm).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewFields).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewFields).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewFields).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewFields).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView0.image = getMap(mapName: .Driel, layerType: .DrielBaseLayer)
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
        showDrielStrongpoints()
        hideDrielStrongpoints()
    }
    
    //MARK: - Gesture Recognizers
        func doubleTapGesture() {
            let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(doubleTapPressed))
            doubleTapRecognizer.numberOfTapsRequired = 2
                view.addGestureRecognizer(doubleTapRecognizer)
        }

        @objc private func doubleTapPressed(_ sender: UITapGestureRecognizer) {
            // 1
            let pointInView = sender.location(in: imageView0)
           
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
    
    @IBAction func shareDrielMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotDrielMap() else { return }
        shareDrielMapImage(screenshot: screenshot)
        func shareDrielMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
        
    }
    
    func snapshotDrielMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView0.intrinsicContentSize)
        imageView0.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectDrielLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectDrielLayersViewController") as? SelectDrielLayersViewController {
              controller.modalPresentationStyle = .popover
              controller.updateDrielMapDelegate = self
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
    
    func showDrielStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_OSTERBEEKAPPROACH) {
            self.loadDrielOsterbeekApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_ROSEANDERPOLDER) {
            self.loadDrielRoseanderPolder()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_KASTEELROSANDE) {
            self.loadDrielKasteelRosande()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BOATYARD) {
            self.loadDrielBoatyard()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BRIDGEWAY) {
            self.loadDrielBridgeway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RIJNBANKS) {
            self.loadDrielRijnBanks()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BRICKFACTORY) {
            self.loadDrielBrickFactory()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RAILWAYBRIDGE) {
            self.loadDrielRailwayBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_GUNEMPLACEMENTS) {
            self.loadDrielGunEmplacements()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RIETVELD) {
            self.loadDrielRietveld()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_SOUTHRAILWAY) {
            self.loadDrielSouthRailway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_MIDDELROAD) {
            self.loadDrielMiddelRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_ORCHARDS) {
            self.loadDrielOrchards()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_SCHADUWWOLKENFARM) {
            self.loadDrielSchaduwwolkenFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_FIELDS) {
            self.loadDrielFields()
        }
    }
    
    func hideDrielStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_OSTERBEEKAPPROACH) == false {
            self.removeDrielOsterbeekApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_ROSEANDERPOLDER) == false {
            self.removeDrielRoseanderPolder()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_KASTEELROSANDE) == false {
            self.removeDrielKasteelRosande()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BOATYARD) == false {
            self.removeDrielBoatyard()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BRIDGEWAY) == false {
            self.removeDrielBridgeway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RIJNBANKS) == false {
            self.removeDrielRijnBanks()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BRICKFACTORY) == false {
            self.removeDrielBrickFactory()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RAILWAYBRIDGE) == false {
            self.removeDrielRailwayBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_GUNEMPLACEMENTS) == false {
            self.removeDrielGunEmplacements()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RIETVELD) == false {
            self.removeDrielRietveld()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_SOUTHRAILWAY) == false {
            self.removeDrielSouthRailway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_MIDDELROAD) == false {
            self.removeDrielMiddelRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_ORCHARDS) == false {
            self.removeDrielOrchards()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_SCHADUWWOLKENFARM) == false {
            self.removeDrielSchaduwwolkenFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_FIELDS) == false {
            self.removeDrielFields()
        }
    }
    
}
//MARK:- Sizing
extension DrielBaseLayerViewController {
    
    func updateMinZoomScaleForSize(_ size: CGSize) {
        let widthScale = size.width / imageView0.bounds.width
        let heightScale = size.height / imageView0.bounds.height
        let minScale = min(widthScale, heightScale)
          
        scrollView.minimumZoomScale = minScale
        scrollView.zoomScale = minScale
    }
    
    func updateConstraintsForSize(_ size: CGSize) {
      let yOffset = max(0, (size.height - imageView0.frame.height) / 2)
      imageViewTopConstraint.constant = yOffset
      imageViewBottomConstraint.constant = yOffset

      let xOffset = max(0, (size.width - imageView0.frame.width) / 2)
      imageViewLeadingConstraint.constant = xOffset
      imageViewTrailingConstraint.constant = xOffset
      view.layoutIfNeeded()
    }
    
}

//MARK:- UIScrollViewDelegate
extension DrielBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView0
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension DrielBaseLayerViewController: UpdateDrielMapDelegate {
    func removeDrielOsterbeekApproach() {
        self.imageViewOsterbeekApproach.isHidden = true
    }
    
    func removeDrielRoseanderPolder() {
        self.imageViewRoseanderPolder.isHidden = true
    }
    
    func removeDrielKasteelRosande() {
        self.imageViewKasteelRosande.isHidden = true
    }
    
    func removeDrielBoatyard() {
        self.imageViewBoatyard.isHidden = true
    }
    
    func removeDrielBridgeway() {
        self.imageViewBridgeway.isHidden = true
    }
    
    func removeDrielRijnBanks() {
        self.imageViewRijnBanks.isHidden = true
    }
    
    func removeDrielBrickFactory() {
        self.imageViewBrickFactory.isHidden = true
    }
    
    func removeDrielRailwayBridge() {
        self.imageViewRailwayBridge.isHidden = true
    }
    
    func removeDrielGunEmplacements() {
        self.imageViewGunEmplacements.isHidden = true
    }
    
    func removeDrielRietveld() {
        self.imageViewRietveld.isHidden = true
    }
    
    func removeDrielSouthRailway() {
        self.imageViewSouthRailway.isHidden = true
    }
    
    func removeDrielMiddelRoad() {
        self.imageViewMiddelRoad.isHidden = true
    }
    
    func removeDrielOrchards() {
        self.imageViewOrchards.isHidden = true
    }
    
    func removeDrielSchaduwwolkenFarm() {
        self.imageViewSchaduwwolkenFarm.isHidden = true
    }
    
    func removeDrielFields() {
        self.imageViewFields.isHidden = true
    }
    
    func loadDrielOsterbeekApproach() {
        self.imageViewOsterbeekApproach.isHidden = false
        self.imageViewOsterbeekApproach.image = getStrongpoint(strongpoint: .StrongpointDrielOsterbeekApproach)
    }
    
    func loadDrielRoseanderPolder() {
        self.imageViewRoseanderPolder.isHidden = false
        self.imageViewRoseanderPolder.image = getStrongpoint(strongpoint: .StrongpointDrielRoseanderPolder)
    }
    
    func loadDrielKasteelRosande() {
        self.imageViewKasteelRosande.isHidden = false
        self.imageViewKasteelRosande.image = getStrongpoint(strongpoint: .StrongpointDrielKasteelRosande)
    }
    
    func loadDrielBoatyard() {
        self.imageViewBoatyard.isHidden = false
        self.imageViewBoatyard.image = getStrongpoint(strongpoint: .StrongpointDrielBoatyard)
    }
    
    func loadDrielBridgeway() {
        self.imageViewBridgeway.isHidden = false
        self.imageViewBridgeway.image = getStrongpoint(strongpoint: .StrongpointDrielBridgeway)
    }
    
    func loadDrielRijnBanks() {
        self.imageViewRijnBanks.isHidden = false
        self.imageViewRijnBanks.image = getStrongpoint(strongpoint: .StrongpointDrielRijnBanks)
    }
    
    func loadDrielBrickFactory() {
        self.imageViewBrickFactory.isHidden = false
        self.imageViewBrickFactory.image = getStrongpoint(strongpoint: .StrongpointDrielBrickFactory)
    }
    
    func loadDrielRailwayBridge() {
        self.imageViewRailwayBridge.isHidden = false
        self.imageViewRailwayBridge.image = getStrongpoint(strongpoint: .StrongpointDrielRailwayBridge)
    }
    
    func loadDrielGunEmplacements() {
        self.imageViewGunEmplacements.isHidden = false
        self.imageViewGunEmplacements.image = getStrongpoint(strongpoint: .StrongpointDrielGunEmplacements)
    }
    
    func loadDrielRietveld() {
        self.imageViewRietveld.isHidden = false
        self.imageViewRietveld.image = getStrongpoint(strongpoint: .StrongpointDrielRietveld)
    }
    
    func loadDrielSouthRailway() {
        self.imageViewSouthRailway.isHidden = false
        self.imageViewSouthRailway.image = getStrongpoint(strongpoint: .StrongpointDrielSouthRailway)
    }
    
    func loadDrielMiddelRoad() {
        self.imageViewMiddelRoad.isHidden = false
        self.imageViewMiddelRoad.image = getStrongpoint(strongpoint: .StrongpointDrielMiddelRoad)
    }
    
    func loadDrielOrchards() {
        self.imageViewOrchards.isHidden = false
        self.imageViewOrchards.image = getStrongpoint(strongpoint: .StrongpointDrielOrchards)
    }
    
    func loadDrielSchaduwwolkenFarm() {
        self.imageViewSchaduwwolkenFarm.isHidden = false
        self.imageViewSchaduwwolkenFarm.image = getStrongpoint(strongpoint: .StrongpointDrielSchaduwwolkenFarm)
    }
    
    func loadDrielFields() {
        self.imageViewFields.isHidden = false
        self.imageViewFields.image = getStrongpoint(strongpoint: .StrongpointDrielFields)
    }

}

extension DrielBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}

