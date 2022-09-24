//
//  Hill400BaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class Hill400BaseLayerViewController: BaseViewController {
    
    var updateHill400MapDelegate: UpdateHill400MapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewConvoyAmbush: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewFedercheckeJunction: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewStuckchenFarm: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewRoerRiverHouse: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewBergsteinChurch: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewKirchweg: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewFlakPits: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewHill400: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewSouthernApproach: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewEselswegJunction: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewEasternSlope: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewTrainWreck: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewRoerRiverCrossing: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewZerkall: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewPaperMill: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewConvoyAmbush)
        imageView.addSubview(imageViewFedercheckeJunction)
        imageView.addSubview(imageViewStuckchenFarm)
        imageView.addSubview(imageViewRoerRiverHouse)
        imageView.addSubview(imageViewBergsteinChurch)
        imageView.addSubview(imageViewKirchweg)
        imageView.addSubview(imageViewFlakPits)
        imageView.addSubview(imageViewHill400)
        imageView.addSubview(imageViewSouthernApproach)
        imageView.addSubview(imageViewEselswegJunction)
        imageView.addSubview(imageViewEasternSlope)
        imageView.addSubview(imageViewTrainWreck)
        imageView.addSubview(imageViewRoerRiverCrossing)
        imageView.addSubview(imageViewZerkall)
        imageView.addSubview(imageViewPaperMill)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewConvoyAmbush.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewConvoyAmbush.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewConvoyAmbush.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewConvoyAmbush.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFedercheckeJunction.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewFedercheckeJunction.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewFedercheckeJunction.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewFedercheckeJunction.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewStuckchenFarm.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewStuckchenFarm.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewStuckchenFarm.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewStuckchenFarm.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoerRiverHouse.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRoerRiverHouse.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRoerRiverHouse.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRoerRiverHouse.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBergsteinChurch.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBergsteinChurch.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBergsteinChurch.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBergsteinChurch.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewKirchweg.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewKirchweg.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewKirchweg.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewKirchweg.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFlakPits.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewFlakPits.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewFlakPits.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewFlakPits.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewHill400).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewHill400).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewHill400).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewHill400).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSouthernApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewSouthernApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewSouthernApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewSouthernApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewEselswegJunction.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewEselswegJunction.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewEselswegJunction.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewEselswegJunction.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewEasternSlope.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewEasternSlope.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewEasternSlope.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewEasternSlope.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTrainWreck.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTrainWreck.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTrainWreck.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTrainWreck.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoerRiverCrossing.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRoerRiverCrossing.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRoerRiverCrossing.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRoerRiverCrossing.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewZerkall.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewZerkall.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewZerkall.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewZerkall.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewPaperMill.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewPaperMill.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewPaperMill.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewPaperMill.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .Hill400, layerType: .Hill400TAC)
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
        showHill400Strongpoints()
        hideHill400Strongpoints()
    }
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectHill400Layers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectHill400LayersViewController") as? SelectHill400LayersViewController {
              controller.modalPresentationStyle = .popover
              controller.updateHill400MapDelegate = self
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
            var scale = min(scrollView.zoomScale * 2, scrollView.maximumZoomScale)
            
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
        
    
    @IBAction func shareHill400MapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotHill400Map() else { return }
        shareHill400MapImage(screenshot: screenshot)
        func shareHill400MapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
    }
    
    func snapshotHill400Map() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    func showHill400Strongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_CONVOYAMBUSH) {
            self.loadHill400ConvoyAmbush()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_FEDERCHECKEJUNCTION) {
            self.loadHill400FedercheckeJunction()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_STUCKCHENFARM) {
            self.loadHill400StuckchenFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERHOUSE) {
            self.loadHill400RoerRiverHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_BERGSTEINCHURCH) {
            self.loadHill400BergsteinChurch()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_KIRCHWEG) {
            self.loadHill400Kirchweg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_FLAKPITS) {
            self.loadHill400FlakPits()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_HILL400) {
            self.loadHill400Hill400()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_SOUTHERNAPPROACH) {
            self.loadHill400SouthernApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ESELSWEG_JUNCTION) {
            self.loadHill400EselswegJunction()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_EASTERNSLOPE) {
            self.loadHill400EasternSlope()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_TRAINWRECK) {
            self.loadHill400TrainWreck()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERCROSSING) {
            self.loadHill400RoerRiverCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ZERKALL) {
            self.loadHill400Zerkall()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_PAPERMILL) {
            self.loadHill400PaperMill()
        }
    }
    
    func hideHill400Strongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_CONVOYAMBUSH) == false {
            self.removeHill400ConvoyAmbush()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_FEDERCHECKEJUNCTION) == false {
            self.removeHill400FedercheckeJunction()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_STUCKCHENFARM) == false {
            self.removeHill400StuckchenFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERHOUSE) == false {
            self.removeHill400RoerRiverHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_BERGSTEINCHURCH) == false {
            self.removeHill400BergsteinChurch()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_KIRCHWEG) == false {
            self.removeHill400Kirchweg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_FLAKPITS) == false {
            self.removeHill400FlakPits()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_HILL400) == false {
            self.removeHill400Hill400()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_SOUTHERNAPPROACH) == false {
            self.removeHill400SouthernApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ESELSWEG_JUNCTION) == false {
            self.removeHill400EselswegJunction()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_EASTERNSLOPE) == false {
            self.removeHill400EasternSlope()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_TRAINWRECK) == false {
            self.removeHill400TrainWreck()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERCROSSING) == false {
            self.removeHill400RoerRiverCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ZERKALL) == false {
            self.removeHill400Zerkall()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_PAPERMILL) == false {
            self.removeHill400PaperMill()
        }
    }
}
//MARK:- Sizing
extension Hill400BaseLayerViewController {
    
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
extension Hill400BaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension Hill400BaseLayerViewController: UpdateHill400MapDelegate {
    func removeHill400ConvoyAmbush() {
        self.imageViewConvoyAmbush.isHidden = true
    }
    
    func removeHill400FedercheckeJunction() {
        self.imageViewFedercheckeJunction.isHidden = true
    }
    
    func removeHill400StuckchenFarm() {
        self.imageViewStuckchenFarm.isHidden = true
    }
    
    func removeHill400RoerRiverHouse() {
        self.imageViewRoerRiverHouse.isHidden = true
    }
    
    func removeHill400BergsteinChurch() {
        self.imageViewBergsteinChurch.isHidden = true
    }
    
    func removeHill400Kirchweg() {
        self.imageViewKirchweg.isHidden = true
    }
    
    func removeHill400FlakPits() {
        self.imageViewFlakPits.isHidden = true
    }
    
    func removeHill400Hill400() {
        self.imageViewHill400.isHidden = true
    }
    
    func removeHill400SouthernApproach() {
        self.imageViewSouthernApproach.isHidden = true
    }
    
    func removeHill400EselswegJunction() {
        self.imageViewEselswegJunction.isHidden = true
    }
    
    func removeHill400EasternSlope() {
        self.imageViewEasternSlope.isHidden = true
    }
    
    func removeHill400TrainWreck() {
        self.imageViewTrainWreck.isHidden = true
    }
    
    func removeHill400RoerRiverCrossing() {
        self.imageViewRoerRiverCrossing.isHidden = true
    }
    
    func removeHill400Zerkall() {
        self.imageViewZerkall.isHidden = true
    }
    
    func removeHill400PaperMill() {
        self.imageViewPaperMill.isHidden = true
    }
    
    func loadHill400ConvoyAmbush() {
        self.imageViewConvoyAmbush.isHidden = false
        self.imageViewConvoyAmbush.image = getStrongpoint(strongpoint: .StrongpointHill400ConvoyAmbush)
    }
    
    func loadHill400FedercheckeJunction() {
        self.imageViewFedercheckeJunction.isHidden = false
        self.imageViewFedercheckeJunction.image = getStrongpoint(strongpoint: .StrongpointHill400FedercheckeJunction)
    }
    
    func loadHill400StuckchenFarm() {
        self.imageViewStuckchenFarm.isHidden = false
        self.imageViewStuckchenFarm.image = getStrongpoint(strongpoint: .StrongpointHill400StuckchenFarm)
    }
    
    func loadHill400RoerRiverHouse() {
        self.imageViewRoerRiverHouse.isHidden = false
        self.imageViewRoerRiverHouse.image = getStrongpoint(strongpoint: .StrongpointHill400RoerRiverHouse)
    }
    
    func loadHill400BergsteinChurch() {
        self.imageViewBergsteinChurch.isHidden = false
        self.imageViewBergsteinChurch.image = getStrongpoint(strongpoint: .StrongpointHill400BergsteinChurch)
    }
    
    func loadHill400Kirchweg() {
        self.imageViewKirchweg.isHidden = false
        self.imageViewKirchweg.image = getStrongpoint(strongpoint: .StrongpointHill400Kirchweg)
    }
    
    func loadHill400FlakPits() {
        self.imageViewFlakPits.isHidden = false
        self.imageViewFlakPits.image = getStrongpoint(strongpoint: .StrongpointHill400FlakPits)
    }
    
    func loadHill400Hill400() {
        self.imageViewHill400.isHidden = false
        self.imageViewHill400.image = getStrongpoint(strongpoint: .StrongpointHill400Hill400)
    }
    
    func loadHill400SouthernApproach() {
        self.imageViewSouthernApproach.isHidden = false
        self.imageViewSouthernApproach.image = getStrongpoint(strongpoint: .StrongpointHill400SouthernApproach)
    }
    
    func loadHill400EselswegJunction() {
        self.imageViewEselswegJunction.isHidden = false
        self.imageViewEselswegJunction.image = getStrongpoint(strongpoint: .StrongpointHill400EselswegJunction)
    }
    
    func loadHill400EasternSlope() {
        self.imageViewEasternSlope.isHidden = false
        self.imageViewEasternSlope.image = getStrongpoint(strongpoint: .StrongpointHill400EasternSlope)
    }
    
    func loadHill400TrainWreck() {
        self.imageViewTrainWreck.isHidden = false
        self.imageViewTrainWreck.image = getStrongpoint(strongpoint: .StrongpointHill400TrainWreck)
    }
    
    func loadHill400RoerRiverCrossing() {
        self.imageViewRoerRiverCrossing.isHidden = false
        self.imageViewRoerRiverCrossing.image = getStrongpoint(strongpoint: .StrongpointHill400RoerRiverCrossing)
    }
    
    func loadHill400Zerkall() {
        self.imageViewZerkall.isHidden = false
        self.imageViewZerkall.image = getStrongpoint(strongpoint: .StrongpointHill400Zerkall)
    }
    
    func loadHill400PaperMill() {
        self.imageViewPaperMill.isHidden = false
        self.imageViewPaperMill.image = getStrongpoint(strongpoint: .StrongpointHill400PaperMill)
    }
    

    
    
    func loadStrongpointsLayer() {
        self.imageView.image = getMap(mapName: .Hill400, layerType: .Hill400Strongpoints)
    }
    
    func loadTACLayer() {
        self.imageView.image = getMap(mapName: .Hill400, layerType: .Hill400TAC)

    }
    
    func loadBaseLayer() {
        self.imageView.image = getMap(mapName: .Hill400, layerType: .Hill400BaseLayer)
    }
}

extension Hill400BaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
