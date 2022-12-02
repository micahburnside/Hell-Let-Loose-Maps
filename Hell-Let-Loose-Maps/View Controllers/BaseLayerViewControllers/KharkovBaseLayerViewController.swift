//
//  KharkovBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 12/2/22.
//

import UIKit

class KharkovBaseLayerViewController: BaseViewController {
    
    var updateKharkovMapDelegate: UpdateKharkovMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewMarshTown: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewSovietVantagePoint: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewGermanFuelDump: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewBitterSpring: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewLumberWorks: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewWindmillHillSide: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewWaterMill: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewStMary: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewDistillery: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewRiverCrossing: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewBelgorodOutskirts: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewLumberyard: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewWehrmachtOverlook: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewHayStorage: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewOverpass: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView0.addSubview(imageViewMarshTown)
        imageView0.addSubview(imageViewSovietVantagePoint)
        imageView0.addSubview(imageViewGermanFuelDump)
        imageView0.addSubview(imageViewBitterSpring)
        imageView0.addSubview(imageViewLumberWorks)
        imageView0.addSubview(imageViewWindmillHillSide)
        imageView0.addSubview(imageViewWaterMill)
        imageView0.addSubview(imageViewStMary)
        imageView0.addSubview(imageViewDistillery)
        imageView0.addSubview(imageViewRiverCrossing)
        imageView0.addSubview(imageViewBelgorodOutskirts)
        imageView0.addSubview(imageViewLumberyard)
        imageView0.addSubview(imageViewWehrmachtOverlook)
        imageView0.addSubview(imageViewHayStorage)
        imageView0.addSubview(imageViewOverpass)
        
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMarshTown.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewMarshTown.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewMarshTown.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewMarshTown.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSovietVantagePoint.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewSovietVantagePoint.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewSovietVantagePoint.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewSovietVantagePoint.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewGermanFuelDump.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewGermanFuelDump.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewGermanFuelDump.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewGermanFuelDump.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBitterSpring.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewBitterSpring.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewBitterSpring.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewBitterSpring.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLumberWorks.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewLumberWorks.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewLumberWorks.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewLumberWorks.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWindmillHillSide.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewWindmillHillSide.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewWindmillHillSide.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewWindmillHillSide.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWaterMill.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewWaterMill.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewWaterMill.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewWaterMill.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewStMary).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewStMary).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewStMary).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewStMary).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDistillery.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewDistillery.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewDistillery.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewDistillery.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRiverCrossing.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewRiverCrossing.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewRiverCrossing.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewRiverCrossing.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBelgorodOutskirts.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewBelgorodOutskirts.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewBelgorodOutskirts.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewBelgorodOutskirts.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageViewLumberyard subView constraints to be equal to it's parent view imageView that is inside a scrollView
        imageViewLumberyard.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewLumberyard.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewLumberyard.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewLumberyard.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWehrmachtOverlook.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewWehrmachtOverlook.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewWehrmachtOverlook.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewWehrmachtOverlook.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewHayStorage).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewHayStorage).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewHayStorage).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewHayStorage).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewOverpass).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewOverpass).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewOverpass).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewOverpass).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView0.image = getMap(mapName: .Kharkov, layerType: .KharkovTAC)
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
        showKharkovStrongpoints()
        hideKharkovStrongpoints()
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
    
    @IBAction func shareKharkovMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotKharkovMap() else { return }
        shareKharkovMapImage(screenshot: screenshot)
        func shareKharkovMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
        
    }
    
    func snapshotKharkovMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView0.intrinsicContentSize)
        imageView0.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectKharkovLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectKharkovLayersViewController") as? SelectKharkovLayersViewController {
              controller.modalPresentationStyle = .popover
              controller.updateKharkovMapDelegate = self
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
    
    func showKharkovStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_MARSHTOWN) {
            self.loadKharkovMarshTown()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_SOVIETVANTAGEPOINT) {
            self.loadKharkovSovietVantagePoint()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_GERMANFUELDUMP) {
            self.loadKharkovGermanFuelDump()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_BITTERSPRING) {
            self.loadKharkovBitterSpring()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERWORKS) {
            self.loadKharkovLumberWorks()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WINDMILLHILLSIDE) {
            self.loadKharkovWindmillHillside()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WATERMILL) {
            self.loadKharkovWaterMill()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_STMARY) {
            self.loadKharkovStMary()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_DISTILLERY) {
            self.loadKharkovDistillery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_RIVERCROSSING) {
            self.loadKharkovRiverCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_BELGORODOUTSKIRTS) {
            self.loadKharkovBelgorodOutskirts()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERYARD) {
            self.loadKharkovLumberyard()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WEHRMACHTOVERLOOK) {
            self.loadKharkovWehrmachtOverlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_HAYSTORAGE) {
            self.loadKharkovHayStorage()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_OVERPASS) {
            self.loadKharkovOverpass()
        }
    }
    
    func hideKharkovStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_MARSHTOWN) == false {
            self.removeKharkovMarshTown()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_SOVIETVANTAGEPOINT) == false {
            self.removeKharkovSovietVantagePoint()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_GERMANFUELDUMP) == false {
            self.removeKharkovGermanFuelDump()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_BITTERSPRING) == false {
            self.removeKharkovBitterSpring()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERWORKS) == false {
            self.removeKharkovLumberWorks()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WINDMILLHILLSIDE) == false {
            self.removeKharkovWindmillHillside()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WATERMILL) == false {
            self.removeKharkovWaterMill()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_STMARY) == false {
            self.removeKharkovStMary()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_DISTILLERY) == false {
            self.removeKharkovDistillery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_RIVERCROSSING) == false {
            self.removeKharkovRiverCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_BELGORODOUTSKIRTS) == false {
            self.removeKharkovBelgorodOutskirts()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERYARD) == false {
            self.removeKharkovLumberyard()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WEHRMACHTOVERLOOK) == false {
            self.removeKharkovWehrmachtOverlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_HAYSTORAGE) == false {
            self.removeKharkovHayStorage()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_OVERPASS) == false {
            self.removeKharkovOverpass()
        }
    }
    
}
//MARK:- Sizing
extension KharkovBaseLayerViewController {
    
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
extension KharkovBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView0
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension KharkovBaseLayerViewController: UpdateKharkovMapDelegate {
    func removeKharkovMarshTown() {
        self.imageViewMarshTown.isHidden = true
    }
    
    func removeKharkovSovietVantagePoint() {
        self.imageViewSovietVantagePoint.isHidden = true
    }
    
    func removeKharkovGermanFuelDump() {
        self.imageViewGermanFuelDump.isHidden = true
    }
    
    func removeKharkovBitterSpring() {
        self.imageViewBitterSpring.isHidden = true
    }
    
    func removeKharkovLumberWorks() {
        self.imageViewLumberWorks.isHidden = true
    }
    
    func removeKharkovWindmillHillside() {
        self.imageViewWindmillHillSide.isHidden = true
    }
    
    func removeKharkovWaterMill() {
        self.imageViewWaterMill.isHidden = true
    }
    
    func removeKharkovStMary() {
        self.imageViewStMary.isHidden = true
    }
    
    func removeKharkovDistillery() {
        self.imageViewDistillery.isHidden = true
    }
    
    func removeKharkovRiverCrossing() {
        self.imageViewRiverCrossing.isHidden = true
    }
    
    func removeKharkovBelgorodOutskirts() {
        self.imageViewBelgorodOutskirts.isHidden = true
    }
    
    func removeKharkovLumberyard() {
        self.imageViewLumberyard.isHidden = true
    }
    
    func removeKharkovWehrmachtOverlook() {
        self.imageViewWehrmachtOverlook.isHidden = true
    }
    
    func removeKharkovHayStorage() {
        self.imageViewHayStorage.isHidden = true
    }
    
    func removeKharkovOverpass() {
        self.imageViewOverpass.isHidden = true
    }
    
    func loadKharkovMarshTown() {
        self.imageViewMarshTown.isHidden = false
        self.imageViewMarshTown.image = getStrongpoint(strongpoint: .StrongpointKharkovMarshTown)
    }
    
    func loadKharkovSovietVantagePoint() {
        self.imageViewSovietVantagePoint.isHidden = false
        self.imageViewSovietVantagePoint.image = getStrongpoint(strongpoint: .StrongpointKharkovSovietVantagePoint)
    }
    
    func loadKharkovGermanFuelDump() {
        self.imageViewGermanFuelDump.isHidden = false
        self.imageViewGermanFuelDump.image = getStrongpoint(strongpoint: .StrongpointKharkovGermanFuelDump)
    }
    
    func loadKharkovBitterSpring() {
        self.imageViewBitterSpring.isHidden = false
        self.imageViewBitterSpring.image = getStrongpoint(strongpoint: .StrongpointKharkovBitterSpring)
    }
    
    func loadKharkovLumberWorks() {
        self.imageViewLumberWorks.isHidden = false
        self.imageViewLumberWorks.image = getStrongpoint(strongpoint: .StrongpointKharkovLumberWorks)
    }
    
    func loadKharkovWindmillHillside() {
        self.imageViewWindmillHillSide.isHidden = false
        self.imageViewWindmillHillSide.image = getStrongpoint(strongpoint: .StrongpointKharkovWindmillHillside)
    }
    
    func loadKharkovWaterMill() {
        self.imageViewWaterMill.isHidden = false
        self.imageViewWaterMill.image = getStrongpoint(strongpoint: .StrongpointKharkovWaterMill)
    }
    
    func loadKharkovStMary() {
        self.imageViewStMary.isHidden = false
        self.imageViewStMary.image = getStrongpoint(strongpoint: .StrongpointKharkovStMary)
    }
    
    func loadKharkovDistillery() {
        self.imageViewDistillery.isHidden = false
        self.imageViewDistillery.image = getStrongpoint(strongpoint: .StrongpointKharkovDistillery)
    }
    
    func loadKharkovRiverCrossing() {
        self.imageViewRiverCrossing.isHidden = false
        self.imageViewRiverCrossing.image = getStrongpoint(strongpoint: .StrongpointKharkovRiverCrossing)
    }
    
    func loadKharkovBelgorodOutskirts() {
        self.imageViewBelgorodOutskirts.isHidden = false
        self.imageViewBelgorodOutskirts.image = getStrongpoint(strongpoint: .StrongpointKharkovBelgorodOutskirts)
    }
    
    func loadKharkovLumberyard() {
        self.imageViewLumberyard.isHidden = false
        self.imageViewLumberyard.image = getStrongpoint(strongpoint: .StrongpointKharkovLumberyard)
    }
    
    func loadKharkovWehrmachtOverlook() {
        self.imageViewWehrmachtOverlook.isHidden = false
        self.imageViewWehrmachtOverlook.image = getStrongpoint(strongpoint: .StrongpointKharkovWehrmachtOverlook)
    }
    
    func loadKharkovHayStorage() {
        self.imageViewHayStorage.isHidden = false
        self.imageViewHayStorage.image = getStrongpoint(strongpoint: .StrongpointKharkovHayStorage)
    }
    
    func loadKharkovOverpass() {
        self.imageViewOverpass.isHidden = false
        self.imageViewOverpass.image = getStrongpoint(strongpoint: .StrongpointKharkovOverpass)
    }

}

extension KharkovBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
