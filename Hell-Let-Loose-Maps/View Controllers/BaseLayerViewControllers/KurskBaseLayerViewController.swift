//
//  KurskBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class KurskBaseLayerViewController: BaseViewController {
    
    var updateKurskMapDelegate: UpdateKurskMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewArtilleryPosition: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewGrushki: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewGrushkiFlank: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewPanzersEnd: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewDefenceInDepth: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewListeningPost: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewTheWindmills: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewYamki: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewOlegsHouse: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewRudno: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewDestroyedBattery: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewTheMuddyChurn: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewRoadToKursk: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewAmmoDump: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewEasternPosition: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewArtilleryPosition)
        imageView.addSubview(imageViewGrushki)
        imageView.addSubview(imageViewGrushkiFlank)
        imageView.addSubview(imageViewPanzersEnd)
        imageView.addSubview(imageViewDefenceInDepth)
        imageView.addSubview(imageViewListeningPost)
        imageView.addSubview(imageViewTheWindmills)
        imageView.addSubview(imageViewYamki)
        imageView.addSubview(imageViewOlegsHouse)
        imageView.addSubview(imageViewRudno)
        imageView.addSubview(imageViewDestroyedBattery)
        imageView.addSubview(imageViewTheMuddyChurn)
        imageView.addSubview(imageViewRoadToKursk)
        imageView.addSubview(imageViewAmmoDump)
        imageView.addSubview(imageViewEasternPosition)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewArtilleryPosition.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewArtilleryPosition.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewArtilleryPosition.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewArtilleryPosition.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewGrushki.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewGrushki.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewGrushki.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewGrushki.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewGrushkiFlank.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewGrushkiFlank.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewGrushkiFlank.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewGrushkiFlank.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewPanzersEnd.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewPanzersEnd.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewPanzersEnd.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewPanzersEnd.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDefenceInDepth.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDefenceInDepth.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDefenceInDepth.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDefenceInDepth.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewListeningPost.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewListeningPost.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewListeningPost.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewListeningPost.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheWindmills.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheWindmills.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheWindmills.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheWindmills.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewYamki).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewYamki).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewYamki).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewYamki).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewOlegsHouse.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewOlegsHouse.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewOlegsHouse.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewOlegsHouse.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRudno.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRudno.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRudno.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRudno.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDestroyedBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDestroyedBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDestroyedBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDestroyedBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheMuddyChurn.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheMuddyChurn.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheMuddyChurn.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheMuddyChurn.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoadToKursk.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRoadToKursk.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRoadToKursk.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRoadToKursk.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewAmmoDump.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewAmmoDump.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewAmmoDump.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewAmmoDump.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewEasternPosition.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewEasternPosition.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewEasternPosition.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewEasternPosition.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .Kursk, layerType: .KurskTAC)
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
        showKurskStrongpoints()
        hideKurskStrongpoints()
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
        let storyboard = UIStoryboard.init(name: "SelectKurskLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectKurskLayersViewController") as? SelectKurskLayersViewController {
              controller.updateKurskMapDelegate = self
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
    


    @IBAction func shareKurskMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotKurskMap() else { return }
        shareKurskMapImage(screenshot: screenshot)
        func shareKurskMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
    }
    
    func snapshotKurskMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    func showKurskStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_ARTILLERYPOSITION) {
            self.loadKurskArtilleryPosition()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKI) {
            self.loadKurskGrushki()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKIFLANK) {
            self.loadKurskGrushkiFlank()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_PANZERSEND) {
            self.loadKurskPanzersEnd()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_DEFENCEINDEPTH) {
            self.loadKurskDefenceInDepth()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_LISTENINGPOST) {
            self.loadKurskListeningPost()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_THEWINDMILLS) {
            self.loadKurskTheWindmills()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_YAMKI) {
            self.loadKurskYamki()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_OLEGSHOUSE) {
            self.loadKurskOlegsHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_RUDNO) {
            self.loadKurskRudno()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_DESTROYEDBATTERY) {
            self.loadKurskDestroyedBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_THEMUDDYCHURN) {
            self.loadKurskTheMuddyChurn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_ROADTOKURSK) {
            self.loadKurskRoadToKursk()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_AMMODUMP) {
            self.loadKurskAmmoDump()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_EASTERNPOSITION) {
            self.loadKurskEasternPosition()
        }
    }
    
    func hideKurskStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_ARTILLERYPOSITION) == false {
            self.removeKurskArtilleryPosition()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKI) == false {
            self.removeKurskGrushki()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKIFLANK) == false {
            self.removeKurskGrushkiFlank()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_PANZERSEND) == false {
            self.removeKurskPanzersEnd()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_DEFENCEINDEPTH) == false {
            self.removeKurskDefenceInDepth()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_LISTENINGPOST) == false {
            self.removeKurskListeningPost()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_THEWINDMILLS) == false {
            self.removeKurskTheWindmills()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_YAMKI) == false {
            self.removeKurskYamki()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_OLEGSHOUSE) == false {
            self.removeKurskOlegsHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_RUDNO) == false {
            self.removeKurskRudno()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_DESTROYEDBATTERY) == false {
            self.removeKurskDestroyedBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_THEMUDDYCHURN) == false {
            self.removeKurskTheMuddyChurn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_ROADTOKURSK) == false {
            self.removeKurskRoadToKursk()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_AMMODUMP) == false {
            self.removeKurskAmmoDump()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_EASTERNPOSITION) == false {
            self.removeKurskEasternPosition()
        }
    }
    
}
//MARK:- Sizing
extension KurskBaseLayerViewController {
    
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
extension KurskBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension KurskBaseLayerViewController: UpdateKurskMapDelegate {
    func removeKurskArtilleryPosition() {
        self.imageViewArtilleryPosition.isHidden = true
    }
    
    func removeKurskGrushki() {
        self.imageViewGrushki.isHidden = true
    }
    
    func removeKurskGrushkiFlank() {
        self.imageViewGrushkiFlank.isHidden = true
    }
    
    func removeKurskPanzersEnd() {
        self.imageViewPanzersEnd.isHidden = true
    }
    
    func removeKurskDefenceInDepth() {
        self.imageViewDefenceInDepth.isHidden = true
    }
    
    func removeKurskListeningPost() {
        self.imageViewListeningPost.isHidden = true
    }
    
    func removeKurskTheWindmills() {
        self.imageViewTheWindmills.isHidden = true
    }
    
    func removeKurskYamki() {
        self.imageViewYamki.isHidden = true
    }
    
    func removeKurskOlegsHouse() {
        self.imageViewOlegsHouse.isHidden = true
    }
    
    func removeKurskRudno() {
        self.imageViewRudno.isHidden = true
    }
    
    func removeKurskDestroyedBattery() {
        self.imageViewDestroyedBattery.isHidden = true
    }
    
    func removeKurskTheMuddyChurn() {
        self.imageViewTheMuddyChurn.isHidden = true
    }
    
    func removeKurskRoadToKursk() {
        self.imageViewRoadToKursk.isHidden = true
    }
    
    func removeKurskAmmoDump() {
        self.imageViewAmmoDump.isHidden = true
    }
    
    func removeKurskEasternPosition() {
        self.imageViewEasternPosition.isHidden = true
    }
    
    func loadKurskArtilleryPosition() {
        self.imageViewArtilleryPosition.isHidden = false
        self.imageViewArtilleryPosition.image = getStrongpoint(strongpoint: .StrongpointKurskArtilleryPosition)
    }
    
    func loadKurskGrushki() {
        self.imageViewGrushki.isHidden = false
        self.imageViewGrushki.image = getStrongpoint(strongpoint: .StrongpointKurskGrushki)
    }
    
    func loadKurskGrushkiFlank() {
        self.imageViewGrushkiFlank.isHidden = false
        self.imageViewGrushkiFlank.image = getStrongpoint(strongpoint: .StrongpointKurskGruskiFlank)
    }
    
    func loadKurskPanzersEnd() {
        self.imageViewPanzersEnd.isHidden = false
        self.imageViewPanzersEnd.image = getStrongpoint(strongpoint: .StrongpointKurskPanzersEnd)
    }
    
    func loadKurskDefenceInDepth() {
        self.imageViewDefenceInDepth.isHidden = false
        self.imageViewDefenceInDepth.image = getStrongpoint(strongpoint: .StrongpointKurskDefenceInDepth)
    }
    
    func loadKurskListeningPost() {
        self.imageViewListeningPost.isHidden = false
        self.imageViewListeningPost.image = getStrongpoint(strongpoint: .StrongpointKurskListeningPost)
    }
    
    func loadKurskTheWindmills() {
        self.imageViewTheWindmills.isHidden = false
        self.imageViewTheWindmills.image = getStrongpoint(strongpoint: .StrongpointKurskTheWindmills)
    }
    
    func loadKurskYamki() {
        self.imageViewYamki.isHidden = false
        self.imageViewYamki.image = getStrongpoint(strongpoint: .StrongpointKurskYamki)
    }
    
    func loadKurskOlegsHouse() {
        self.imageViewOlegsHouse.isHidden = false
        self.imageViewOlegsHouse.image = getStrongpoint(strongpoint: .StrongpointKurskOlegsHouse)
    }
    
    func loadKurskRudno() {
        self.imageViewRudno.isHidden = false
        self.imageViewRudno.image = getStrongpoint(strongpoint: .StrongpointKurskRudno)
    }
    
    func loadKurskDestroyedBattery() {
        self.imageViewDestroyedBattery.isHidden = false
        self.imageViewDestroyedBattery.image = getStrongpoint(strongpoint: .StrongpointKurskDestroyedBattery)
    }
    
    func loadKurskTheMuddyChurn() {
        self.imageViewTheMuddyChurn.isHidden = false
        self.imageViewTheMuddyChurn.image = getStrongpoint(strongpoint: .StrongpointKurskTheMuddyChurn)
    }
    
    func loadKurskRoadToKursk() {
        self.imageViewRoadToKursk.isHidden = false
        self.imageViewRoadToKursk.image = getStrongpoint(strongpoint: .StrongpointKurskRoadToKursk)
    }
    
    func loadKurskAmmoDump() {
        self.imageViewAmmoDump.isHidden = false
        self.imageViewAmmoDump.image = getStrongpoint(strongpoint: .StrongpointKurskAmmoDump)
    }
    
    func loadKurskEasternPosition() {
        self.imageViewEasternPosition.isHidden = false
        self.imageViewEasternPosition.image = getStrongpoint(strongpoint: .StrongpointKurskEasternPosition)
    }
    
    
    func loadStrongpointsLayer() {
        self.imageView.image = getMap(mapName: .Kursk, layerType: .KurskStrongpoints)
    }
    
    func loadTACLayer() {
        self.imageView.image = getMap(mapName: .Kursk, layerType: .KurskTAC)
    }
    
    func loadBaseLayer() {
        self.imageView.image = getMap(mapName: .Kursk, layerType: .KurskBaseLayer)
    }
}

extension KurskBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
