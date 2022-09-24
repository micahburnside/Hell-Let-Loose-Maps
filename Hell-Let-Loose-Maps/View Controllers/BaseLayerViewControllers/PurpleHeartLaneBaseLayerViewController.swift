//
//  PurpleHeartLaneBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class PurpleHeartLaneBaseLayerViewController: BaseViewController {
    
    var updatePurpleHeartLaneMapDelegate: UpdatePurpleHeartLaneMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewBloodyBend: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewDeadMansCorner: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewForwardBattery: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewJourdanCanal: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewDouveBridge: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewDouveRiverBattery: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewGroultPillbox: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewCarentanCauseway: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewFlakPosition: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewMadeleineFarm: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewWMadeleineBridge: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewAidStation: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewIngoufCrossroads: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewRoadToCarentan: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewCabbagePatch: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewBloodyBend)
        imageView.addSubview(imageViewDeadMansCorner)
        imageView.addSubview(imageViewForwardBattery)
        imageView.addSubview(imageViewJourdanCanal)
        imageView.addSubview(imageViewDouveBridge)
        imageView.addSubview(imageViewDouveRiverBattery)
        imageView.addSubview(imageViewGroultPillbox)
        imageView.addSubview(imageViewCarentanCauseway)
        imageView.addSubview(imageViewFlakPosition)
        imageView.addSubview(imageViewMadeleineFarm)
        imageView.addSubview(imageViewWMadeleineBridge)
        imageView.addSubview(imageViewAidStation)
        imageView.addSubview(imageViewIngoufCrossroads)
        imageView.addSubview(imageViewRoadToCarentan)
        imageView.addSubview(imageViewCabbagePatch)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBloodyBend.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBloodyBend.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBloodyBend.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBloodyBend.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDeadMansCorner.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDeadMansCorner.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDeadMansCorner.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDeadMansCorner.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewForwardBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewForwardBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewForwardBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewForwardBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewJourdanCanal.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewJourdanCanal.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewJourdanCanal.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewJourdanCanal.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDouveBridge.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDouveBridge.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDouveBridge.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDouveBridge.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDouveRiverBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDouveRiverBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDouveRiverBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDouveRiverBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewGroultPillbox.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewGroultPillbox.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewGroultPillbox.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewGroultPillbox.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewCarentanCauseway).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewCarentanCauseway).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewCarentanCauseway).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewCarentanCauseway).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFlakPosition.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewFlakPosition.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewFlakPosition.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewFlakPosition.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMadeleineFarm.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewMadeleineFarm.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewMadeleineFarm.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewMadeleineFarm.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWMadeleineBridge.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWMadeleineBridge.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWMadeleineBridge.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWMadeleineBridge.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewAidStation.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewAidStation.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewAidStation.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewAidStation.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewIngoufCrossroads.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewIngoufCrossroads.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewIngoufCrossroads.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewIngoufCrossroads.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoadToCarentan.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRoadToCarentan.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRoadToCarentan.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRoadToCarentan.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCabbagePatch.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewCabbagePatch.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewCabbagePatch.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewCabbagePatch.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .PurpleHeartLane, layerType: .PurpleHeartLaneTAC)
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
        showPurpleHeartLaneStrongpoints()
        hidePurpleHeartLaneStrongpoints()
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
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectPurpleHeartLaneLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectPurpleHeartLaneLayersViewController") as? SelectPurpleHeartLaneLayersViewController {
              controller.modalPresentationStyle = .popover
              controller.updatePurpleHeartLaneMapDelegate = self
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

    @IBAction func sharePurpleHeartLaneMapLayer(_ sender: UIBarButtonItem) {
        
        guard let screenshot = self.snapshotPurpleHeartLaneMap() else { return }
        
        sharePurpleHeartLaneMapImage(screenshot: screenshot)
        func sharePurpleHeartLaneMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
        
    }
    
    func snapshotPurpleHeartLaneMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    func showPurpleHeartLaneStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_BLOODYBEND) {
            self.loadPurpleHeartLaneBloodyBend()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DEADMANSCORNER) {
            self.loadPurpleHeartLaneDeadMansCorner()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FORWARDBATTERY) {
            self.loadPurpleHeartLaneForwardBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_JOURDANCANAL) {
            self.loadPurpleHeartLaneJourdanCanal()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DOUVEBRIDGE) {
            self.loadPurpleHeartLaneDouveBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_RIVERBATTERY) {
            self.loadPurpleHeartLaneDouveRiverBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_GROULTPILLBOX) {
            self.loadPurpleHeartLaneGroultPillbox()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CARENTANCAUSEWAY) {
            self.loadPurpleHeartLaneCarentanCauseway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FLAKPOSITION) {
            self.loadPurpleHeartLaneFlakPosition()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEFARM) {
            self.loadPurpleHeartLaneMadeleineFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEBRIDGE) {
            self.loadPurpleHeartLaneMadeleineBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_AIDSTATION) {
            self.loadPurpleHeartLaneAidStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_INGOUFCROSSROADS) {
            self.loadPurpleHeartLaneIngoufCrossroads()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_ROADTOCARENTAN) {
            self.loadPurpleHeartLaneRoadToCarentan()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CABBAGEPATCH) {
            self.loadPurpleHeartLaneCabbagePatch()
        }
    }
    
    func hidePurpleHeartLaneStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_BLOODYBEND) == false {
            self.removePurpleHeartLaneBloodyBend()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DEADMANSCORNER) == false {
            self.removePurpleHeartLaneDeadMansCorner()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FORWARDBATTERY) == false {
            self.removePurpleHeartLaneForwardBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_JOURDANCANAL) == false {
            self.removePurpleHeartLaneJourdanCanal()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DOUVEBRIDGE) == false {
            self.removePurpleHeartLaneDouveBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_RIVERBATTERY) == false {
            self.removePurpleHeartLaneDouveRiverBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_GROULTPILLBOX) == false {
            self.removePurpleHeartLaneGroultPillbox()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CARENTANCAUSEWAY) == false {
            self.removePurpleHeartLaneCarentanCauseway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FLAKPOSITION) == false {
            self.removePurpleHeartLaneFlakPosition()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEFARM) == false {
            self.removePurpleHeartLaneMadeleineFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEBRIDGE) == false {
            self.removePurpleHeartLaneMadeleineBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_AIDSTATION) == false {
            self.removePurpleHeartLaneAidStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_INGOUFCROSSROADS) == false {
            self.removePurpleHeartLaneIngoufCrossroads()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_ROADTOCARENTAN) == false {
            self.removePurpleHeartLaneRoadToCarentan()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CABBAGEPATCH) == false {
            self.removePurpleHeartLaneCabbagePatch()
        }
    }
    
}
//MARK:- Sizing
extension PurpleHeartLaneBaseLayerViewController {
    
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
extension PurpleHeartLaneBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension PurpleHeartLaneBaseLayerViewController: UpdatePurpleHeartLaneMapDelegate {
    
    func removePurpleHeartLaneBloodyBend() {
        self.imageViewBloodyBend.isHidden = true
    }
    
    func removePurpleHeartLaneDeadMansCorner() {
        self.imageViewDeadMansCorner.isHidden = true
    }
    
    func removePurpleHeartLaneForwardBattery() {
        self.imageViewForwardBattery.isHidden = true
    }
    
    func removePurpleHeartLaneJourdanCanal() {
        self.imageViewJourdanCanal.isHidden = true
    }
    
    func removePurpleHeartLaneDouveBridge() {
        self.imageViewDouveBridge.isHidden = true
    }
    
    func removePurpleHeartLaneDouveRiverBattery() {
        self.imageViewDouveRiverBattery.isHidden = true
    }
    
    func removePurpleHeartLaneGroultPillbox() {
        self.imageViewGroultPillbox.isHidden = true
    }
    
    func removePurpleHeartLaneCarentanCauseway() {
        self.imageViewCarentanCauseway.isHidden = true
    }
    
    func removePurpleHeartLaneFlakPosition() {
        self.imageViewFlakPosition.isHidden = true
    }
    
    func removePurpleHeartLaneMadeleineFarm() {
        self.imageViewMadeleineFarm.isHidden = true
    }
    
    func removePurpleHeartLaneMadeleineBridge() {
        self.imageViewWMadeleineBridge.isHidden = true
    }
    
    func removePurpleHeartLaneAidStation() {
        self.imageViewAidStation.isHidden = true
    }
    
    func removePurpleHeartLaneIngoufCrossroads() {
        self.imageViewIngoufCrossroads.isHidden = true
    }
    
    func removePurpleHeartLaneRoadToCarentan() {
        self.imageViewRoadToCarentan.isHidden = true
    }
    
    func removePurpleHeartLaneCabbagePatch() {
        self.imageViewCabbagePatch.isHidden = true
    }
    
    func loadPurpleHeartLaneBloodyBend() {
        self.imageViewBloodyBend.isHidden = false
        self.imageViewBloodyBend.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneBloodyBend)
    }
    
    func loadPurpleHeartLaneDeadMansCorner() {
        self.imageViewDeadMansCorner.isHidden = false
        self.imageViewDeadMansCorner.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneDeadMansCorner)
    }
    
    func loadPurpleHeartLaneForwardBattery() {
        self.imageViewForwardBattery.isHidden = false
        self.imageViewForwardBattery.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneForwardBattery)
    }
    
    func loadPurpleHeartLaneJourdanCanal() {
        self.imageViewJourdanCanal.isHidden = false
        self.imageViewJourdanCanal.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneJourdansCanal)
    }
    
    func loadPurpleHeartLaneDouveBridge() {
        self.imageViewDouveBridge.isHidden = false
        self.imageViewDouveBridge.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneDouveBridge)
    }
    
    func loadPurpleHeartLaneDouveRiverBattery() {
        self.imageViewDouveRiverBattery.isHidden = false
        self.imageViewDouveRiverBattery.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneDouveRiverBattery)
    }
    
    func loadPurpleHeartLaneGroultPillbox() {
        self.imageViewGroultPillbox.isHidden = false
        self.imageViewGroultPillbox.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneGroultPillbox)
    }
    
    func loadPurpleHeartLaneCarentanCauseway() {
        self.imageViewCarentanCauseway.isHidden = false
        self.imageViewCarentanCauseway.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneCarentanCauseway)
    }
    
    func loadPurpleHeartLaneFlakPosition() {
        self.imageViewFlakPosition.isHidden = false
        self.imageViewFlakPosition.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneFlakPosition)
    }
    
    func loadPurpleHeartLaneMadeleineFarm() {
        self.imageViewMadeleineFarm.isHidden = false
        self.imageViewMadeleineFarm.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneMadeleineFarm)
    }
    
    func loadPurpleHeartLaneMadeleineBridge() {
        self.imageViewWMadeleineBridge.isHidden = false
        self.imageViewWMadeleineBridge.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneMadeleineBridge)
    }
    
    func loadPurpleHeartLaneAidStation() {
        self.imageViewAidStation.isHidden = false
        self.imageViewAidStation.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneAidStation)
    }
    
    func loadPurpleHeartLaneIngoufCrossroads() {
        self.imageViewIngoufCrossroads.isHidden = false
        self.imageViewIngoufCrossroads.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneIngoufCrossroads)
    }
    
    func loadPurpleHeartLaneRoadToCarentan() {
        self.imageViewRoadToCarentan.isHidden = false
        self.imageViewRoadToCarentan.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneRoadToCarentan)
    }
    
    func loadPurpleHeartLaneCabbagePatch() {
        self.imageViewCabbagePatch.isHidden = false
        self.imageViewCabbagePatch.image = getStrongpoint(strongpoint: .StrongpointPurpleHeartLaneCabbagePatch)
    }
}

extension PurpleHeartLaneBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
