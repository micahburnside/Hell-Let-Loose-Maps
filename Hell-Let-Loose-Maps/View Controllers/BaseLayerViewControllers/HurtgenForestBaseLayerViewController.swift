//
//  HurtgenForestBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class HurtgenForestBaseLayerViewController: BaseViewController {
    
    var updateHurtgenForestMapDelegate: UpdateHurtgenForestMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewTheMasbauchApproach: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewReserveStation: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewLumberyard: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewWehebachOverlook: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewKallTrail: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewTheRuin: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewNorthPass: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewTheScar: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewTheSiegfriedLine: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewHill15: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewJacobsBarn: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewSalient42: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewGrosshauApproach: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewHurtgenApproach: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewLoggingCamp: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewTheMasbauchApproach)
        imageView.addSubview(imageViewReserveStation)
        imageView.addSubview(imageViewLumberyard)
        imageView.addSubview(imageViewWehebachOverlook)
        imageView.addSubview(imageViewKallTrail)
        imageView.addSubview(imageViewTheRuin)
        imageView.addSubview(imageViewNorthPass)
        imageView.addSubview(imageViewTheScar)
        imageView.addSubview(imageViewTheSiegfriedLine)
        imageView.addSubview(imageViewHill15)
        imageView.addSubview(imageViewJacobsBarn)
        imageView.addSubview(imageViewSalient42)
        imageView.addSubview(imageViewGrosshauApproach)
        imageView.addSubview(imageViewHurtgenApproach)
        imageView.addSubview(imageViewLoggingCamp)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheMasbauchApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheMasbauchApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheMasbauchApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheMasbauchApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewReserveStation.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewReserveStation.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewReserveStation.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewReserveStation.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLumberyard.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLumberyard.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLumberyard.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLumberyard.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWehebachOverlook.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWehebachOverlook.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWehebachOverlook.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWehebachOverlook.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewKallTrail.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewKallTrail.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewKallTrail.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewKallTrail.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheRuin.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheRuin.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheRuin.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheRuin.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewNorthPass.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewNorthPass.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewNorthPass.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewNorthPass.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewTheScar).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewTheScar).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewTheScar).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewTheScar).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheSiegfriedLine.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheSiegfriedLine.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheSiegfriedLine.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheSiegfriedLine.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHill15.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewHill15.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewHill15.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewHill15.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewJacobsBarn.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewJacobsBarn.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewJacobsBarn.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewJacobsBarn.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSalient42.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewSalient42.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewSalient42.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewSalient42.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewGrosshauApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewGrosshauApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewGrosshauApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewGrosshauApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHurtgenApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewHurtgenApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewHurtgenApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewHurtgenApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLoggingCamp.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLoggingCamp.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLoggingCamp.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLoggingCamp.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectHurtgenForestLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectHurtgenForestLayersViewController") as? SelectHurtgenForestLayersViewController {
              controller.modalPresentationStyle = .popover
              controller.updateHurtgenForestMapDelegate = self
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

    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .HurtgenForest, layerType: .HurtgenForestTAC)
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
        showHurgtenForestStrongpoints()
        hideHurtgenForestStrongpoints()
    }
    
    @IBAction func shareHurtgenForestMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotHurtgenForestMap() else { return }
        shareHurtgenForestMapImage(screenshot: screenshot)
        func shareHurtgenForestMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
        
    }
    
    func snapshotHurtgenForestMap() -> UIImage?
{
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    func showHurgtenForestStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THEMASBAUCHAPPROACH) {
            self.loadHurtgenForestTheMasbauchApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_RESERVESTATION) {
            self.loadHurtgenForestReserveStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LUMBERYARD) {
            self.loadHurtgenForestLumberyard()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_WEHEBACHOVERLOOK) {
            self.loadHurtgenForestWehebachOverlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_KALLTRAIL) {
            self.loadHurtgenForestKallTrail()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THERUIN) {
            self.loadHurtgenForestTheRuin()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_NORTHPASS) {
            self.loadHurtgenForestNorthPass()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESCAR) {
            self.loadHurtgenForestTheScar()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESIEGFRIEDLINE) {
            self.loadHurtgenForestTheSiegfriedLine()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HILL15) {
            self.loadHurtgenForestHill15()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_JACOBSBARN) {
            self.loadHurtgenForestJacobsBarn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_SALIENT42) {
            self.loadHurtgenForestSalient42()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_GROSSHAUAPPROACH) {
            self.loadHurtgenForestGrosshauApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HURTGENAPPROACH) {
            self.loadHurtgenForestHurtgenApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LOGGINGCAMP) {
            self.loadHurtgenForestLoggingCamp()
        }
    }
    
    func hideHurtgenForestStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THEMASBAUCHAPPROACH) == false {
            self.removeHurtgenForestTheMasbauchApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_RESERVESTATION) == false {
            self.removeHurtgenForestReserveStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LUMBERYARD) == false {
            self.removeHurtgenForestLumberyard()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_WEHEBACHOVERLOOK) == false {
            self.removeHurtgenForestWehebachOverlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_KALLTRAIL) == false {
            self.removeHurtgenForestKallTrail()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THERUIN) == false {
            self.removeHurtgenForestTheRuin()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_NORTHPASS) == false {
            self.removeHurtgenForestNorthPass()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESCAR) == false {
            self.removeHurtgenForestTheScar()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESIEGFRIEDLINE) == false {
            self.removeHurtgenForestTheSiegfriedLine()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HILL15) == false {
            self.removeHurtgenForestHill15()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_JACOBSBARN) == false {
            self.removeHurtgenForestJacobsBarn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_SALIENT42) == false {
            self.removeHurtgenForestSalient42()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_GROSSHAUAPPROACH) == false {
            self.removeHurtgenForestGrosshauApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HURTGENAPPROACH) == false {
            self.removeHurtgenForestHurtgenApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LOGGINGCAMP) == false {
            self.removeHurtgenForestLoggingCamp()
        }
    }
    
}
//MARK:- Sizing
extension HurtgenForestBaseLayerViewController {
    
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
extension HurtgenForestBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension HurtgenForestBaseLayerViewController: UpdateHurtgenForestMapDelegate {
    func removeHurtgenForestTheMasbauchApproach() {
        self.imageViewTheMasbauchApproach.isHidden = true
    }
    
    func removeHurtgenForestReserveStation() {
        self.imageViewReserveStation.isHidden = true
    }
    
    func removeHurtgenForestLumberyard() {
        self.imageViewLumberyard.isHidden = true
    }
    
    func removeHurtgenForestWehebachOverlook() {
        self.imageViewWehebachOverlook.isHidden = true
    }
    
    func removeHurtgenForestKallTrail() {
        self.imageViewKallTrail.isHidden = true
    }
    
    func removeHurtgenForestTheRuin() {
        self.imageViewTheRuin.isHidden = true
    }
    
    func removeHurtgenForestNorthPass() {
        self.imageViewNorthPass.isHidden = true
    }
    
    func removeHurtgenForestTheScar() {
        self.imageViewTheScar.isHidden = true
    }
    
    func removeHurtgenForestTheSiegfriedLine() {
        self.imageViewTheSiegfriedLine.isHidden = true
    }
    
    func removeHurtgenForestHill15() {
        self.imageViewHill15.isHidden = true
    }
    
    func removeHurtgenForestJacobsBarn() {
        self.imageViewJacobsBarn.isHidden = true
    }
    
    func removeHurtgenForestSalient42() {
        self.imageViewSalient42.isHidden = true
    }
    
    func removeHurtgenForestGrosshauApproach() {
        self.imageViewGrosshauApproach.isHidden = true
    }
    
    func removeHurtgenForestHurtgenApproach() {
        self.imageViewHurtgenApproach.isHidden = true
    }
    
    func removeHurtgenForestLoggingCamp() {
        self.imageViewLoggingCamp.isHidden = true
    }
    
    func loadHurtgenForestTheMasbauchApproach() {
        self.imageViewTheMasbauchApproach.isHidden = false
        self.imageViewTheMasbauchApproach.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestTheMasbauchApproach)
    }
    
    func loadHurtgenForestReserveStation() {
        self.imageViewReserveStation.isHidden = false
        self.imageViewReserveStation.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestReserveStation)
    }
    
    func loadHurtgenForestLumberyard() {
        self.imageViewLumberyard.isHidden = false
        self.imageViewLumberyard.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestLumberYard)
    }
    
    func loadHurtgenForestWehebachOverlook() {
        self.imageViewWehebachOverlook.isHidden = false
        self.imageViewWehebachOverlook.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestWehebachOverlook)
    }
    
    func loadHurtgenForestKallTrail() {
        self.imageViewKallTrail.isHidden = false
        self.imageViewKallTrail.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestKallTrail)
    }
    
    func loadHurtgenForestTheRuin() {
        self.imageViewTheRuin.isHidden = false
        self.imageViewTheRuin.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestTheRuin)
    }
    
    func loadHurtgenForestNorthPass() {
        self.imageViewNorthPass.isHidden = false
        self.imageViewNorthPass.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestNorthPass)
    }
    
    func loadHurtgenForestTheScar() {
        self.imageViewTheScar.isHidden = false
        self.imageViewTheScar.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestTheScar)
    }
    
    func loadHurtgenForestTheSiegfriedLine() {
        self.imageViewTheSiegfriedLine.isHidden = false
        self.imageViewTheSiegfriedLine.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestTheSiegfriedLine)
    }
    
    func loadHurtgenForestHill15() {
        self.imageViewHill15.isHidden = false
        self.imageViewHill15.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestHill15)
    }
    
    func loadHurtgenForestJacobsBarn() {
        self.imageViewJacobsBarn.isHidden = false
        self.imageViewJacobsBarn.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestJacobsBarn)
    }
    
    func loadHurtgenForestSalient42() {
        self.imageViewSalient42.isHidden = false
        self.imageViewSalient42.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestSalient42)
    }
    
    func loadHurtgenForestGrosshauApproach() {
        self.imageViewGrosshauApproach.isHidden = false
        self.imageViewGrosshauApproach.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestGrosshauApproach)
    }
    
    func loadHurtgenForestHurtgenApproach() {
        self.imageViewHurtgenApproach.isHidden = false
        self.imageViewHurtgenApproach.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestHurtgenApproach)
    }
    
    func loadHurtgenForestLoggingCamp() {
        self.imageViewLoggingCamp.isHidden = false
        self.imageViewLoggingCamp.image = getStrongpoint(strongpoint: .StrongpointHurtgenForestLoggingCamp)
    }
    
    
    func loadStrongpointsLayer() {
        self.imageView.image = getMap(mapName: .HurtgenForest, layerType: .HurtgenForestStrongpoints)
    }
    
    func loadTACLayer() {
        self.imageView.image = getMap(mapName: .HurtgenForest, layerType: .HurtgenForestTAC)
    }
    
    func loadBaseLayer() {
        self.imageView.image = getMap(mapName: .HurtgenForest, layerType: .HurtgenForestBaseLayer)
    }
}

extension HurtgenForestBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
