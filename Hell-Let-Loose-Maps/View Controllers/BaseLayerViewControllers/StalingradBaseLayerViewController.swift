//
//  StalingradBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class StalingradBaseLayerViewController: BaseViewController {
    
    var updateStalingradMapDelegate: UpdateStalingradMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewMamayevApproach: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewNailFactory: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewCityOverlook: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewDolgiyRavine: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewYellowHouse: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewKomsomolHQ: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewRailwayCrossing: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewCarriageDepot: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewTrainStation: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewHouseOfTheWorkers: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewPavlovsHouse: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewTheBrewery: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewLShapedHouse: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewGrudininsMill: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewVolgaBanks: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewMamayevApproach)
        imageView.addSubview(imageViewNailFactory)
        imageView.addSubview(imageViewCityOverlook)
        imageView.addSubview(imageViewDolgiyRavine)
        imageView.addSubview(imageViewYellowHouse)
        imageView.addSubview(imageViewKomsomolHQ)
        imageView.addSubview(imageViewRailwayCrossing)
        imageView.addSubview(imageViewCarriageDepot)
        imageView.addSubview(imageViewTrainStation)
        imageView.addSubview(imageViewHouseOfTheWorkers)
        imageView.addSubview(imageViewPavlovsHouse)
        imageView.addSubview(imageViewTheBrewery)
        imageView.addSubview(imageViewLShapedHouse)
        imageView.addSubview(imageViewGrudininsMill)
        imageView.addSubview(imageViewVolgaBanks)

        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMamayevApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewMamayevApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewMamayevApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewMamayevApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewNailFactory.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewNailFactory.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewNailFactory.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewNailFactory.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCityOverlook.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewCityOverlook.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewCityOverlook.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewCityOverlook.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDolgiyRavine.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDolgiyRavine.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDolgiyRavine.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDolgiyRavine.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewYellowHouse.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewYellowHouse.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewYellowHouse.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewYellowHouse.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewKomsomolHQ.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewKomsomolHQ.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewKomsomolHQ.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewKomsomolHQ.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRailwayCrossing.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRailwayCrossing.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRailwayCrossing.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRailwayCrossing.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewCarriageDepot).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewCarriageDepot).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewCarriageDepot).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewCarriageDepot).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTrainStation.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTrainStation.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTrainStation.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTrainStation.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHouseOfTheWorkers.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewHouseOfTheWorkers.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewHouseOfTheWorkers.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewHouseOfTheWorkers.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewPavlovsHouse.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewPavlovsHouse.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewPavlovsHouse.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewPavlovsHouse.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheBrewery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheBrewery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheBrewery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheBrewery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLShapedHouse.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLShapedHouse.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLShapedHouse.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLShapedHouse.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewGrudininsMill).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewGrudininsMill).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewGrudininsMill).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewGrudininsMill).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewVolgaBanks).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewVolgaBanks).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewVolgaBanks).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewVolgaBanks).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .Stalingrad, layerType: .StalingradTAC)
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
        showStalingradStrongpoints()
        hideStalingradStrongpoints()
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
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectStalingradLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectStalingradLayersViewController") as? SelectStalingradLayersViewController {
              controller.modalPresentationStyle = .popover
              controller.updateStalingradMapDelegate = self
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
    
    
    @IBAction func shareStalingradMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotStalingradMap() else { return }
        shareStalingradMapImage(screenshot: screenshot)
        func shareStalingradMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
        
    }
    
    func snapshotStalingradMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    func showStalingradStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_MAMAYEVAPPROACH) {
            self.loadStalingradMamayevApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_NAILFACTORY) {
            self.loadStalingradNailFactory()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_CITYOVERLOOK) {
            self.loadStalingradCityOverlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_DOLGIYRAVINE) {
            self.loadStalingradDolgiyRavine()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_YELLOWHOUSE) {
            self.loadStalingradYellowHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_KOMSOMOLHQ) {
            self.loadStalingradKomsomolHQ()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_RAILWAYCROSSING) {
            self.loadStalingradRailwayCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_CARRIAGEDEPOT) {
            self.loadStalingradCarriageDepot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_TRAINSTATION) {
            self.loadStalingradTrainStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_HOUSEOFTHEWORKERS) {
            self.loadStalingradHouseOfTheWorkers()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_PAVLOVSHOUSE) {
            self.loadStalingradPavlovsHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_THEBREWERY) {
            self.loadStalingradTheBrewery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_LSHAPEDHOUSE) {
            self.loadStalingradLShapedHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_GRUDININSMILL) {
            self.loadStalingradGrudininsMill()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_VOLGABANKS) {
            self.loadStalingradVolgaBanks()
        }
    }
    
    func hideStalingradStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_MAMAYEVAPPROACH) == false {
            self.removeStalingradMamayevApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_NAILFACTORY) == false {
            self.removeStalingradNailFactory()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_CITYOVERLOOK) == false {
            self.removeStalingradCityOverlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_DOLGIYRAVINE) == false {
            self.removeStalingradDolgiyRavine()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_YELLOWHOUSE) == false {
            self.removeStalingradYellowHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_KOMSOMOLHQ) == false {
            self.removeStalingradKomsomolHQ()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_RAILWAYCROSSING) == false {
            self.removeStalingradRailwayCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_CARRIAGEDEPOT) == false {
            self.removeStalingradCarriageDepot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_TRAINSTATION) == false {
            self.removeStalingradTrainStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_HOUSEOFTHEWORKERS) == false {
            self.removeStalingradHouseOfTheWorkers()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_PAVLOVSHOUSE) == false {
            self.removeStalingradPavlovsHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_THEBREWERY) == false {
            self.removeStalingradTheBrewery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_LSHAPEDHOUSE) == false {
            self.removeStalingradLShapedHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_GRUDININSMILL) == false {
            self.removeStalingradGrudininsMill()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_VOLGABANKS) == false {
            self.removeStalingradVolgaBanks()
        }
    }
    
}
//MARK:- Sizing
extension StalingradBaseLayerViewController {
    
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
extension StalingradBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension StalingradBaseLayerViewController: UpdateStalingradMapDelegate {

    func removeStalingradMamayevApproach() {
        self.imageViewMamayevApproach.isHidden = true
    }
    
    func removeStalingradNailFactory() {
        self.imageViewNailFactory.isHidden = true
    }
    
    func removeStalingradCityOverlook() {
        self.imageViewCityOverlook.isHidden = true
    }
    
    func removeStalingradDolgiyRavine() {
        self.imageViewDolgiyRavine.isHidden = true
    }
    
    func removeStalingradYellowHouse() {
        self.imageViewYellowHouse.isHidden = true
    }
    
    func removeStalingradKomsomolHQ() {
        self.imageViewKomsomolHQ.isHidden = true
    }
    
    func removeStalingradRailwayCrossing() {
        self.imageViewRailwayCrossing.isHidden = true
    }
    
    func removeStalingradCarriageDepot() {
        self.imageViewCarriageDepot.isHidden = true
    }
    
    func removeStalingradTrainStation() {
        self.imageViewTrainStation.isHidden = true
    }
    
    func removeStalingradHouseOfTheWorkers() {
        self.imageViewHouseOfTheWorkers.isHidden = true
    }
    
    func removeStalingradPavlovsHouse() {
        self.imageViewPavlovsHouse.isHidden = true
    }
    
    func removeStalingradTheBrewery() {
        self.imageViewTheBrewery.isHidden = true
    }
    
    func removeStalingradLShapedHouse() {
        self.imageViewLShapedHouse.isHidden = true
    }
    
    func removeStalingradGrudininsMill() {
        self.imageViewGrudininsMill.isHidden = true
    }
    
    func removeStalingradVolgaBanks() {
        self.imageViewVolgaBanks.isHidden = true
    }

    func loadStalingradMamayevApproach() {
        self.imageViewMamayevApproach.isHidden = false
        self.imageViewMamayevApproach.image = getStrongpoint(strongpoint: .StrongpointStalingradMamayevApproach)
    }
    
    func loadStalingradNailFactory() {
        self.imageViewNailFactory.isHidden = false
        self.imageViewNailFactory.image = getStrongpoint(strongpoint: .StrongpointStalingradNailFactory)
    }
    
    func loadStalingradCityOverlook() {
        self.imageViewCityOverlook.isHidden = false
        self.imageViewCityOverlook.image = getStrongpoint(strongpoint: .StrongpointStalingradCityOverlook)
    }
    
    func loadStalingradDolgiyRavine() {
        self.imageViewDolgiyRavine.isHidden = false
        self.imageViewDolgiyRavine.image = getStrongpoint(strongpoint: .StrongpointStalingradDolgiyRavine)
    }
    
    func loadStalingradYellowHouse() {
        self.imageViewYellowHouse.isHidden = false
        self.imageViewYellowHouse.image = getStrongpoint(strongpoint: .StrongpointStalingradYellowHouse)
    }
    
    func loadStalingradKomsomolHQ() {
        self.imageViewKomsomolHQ.isHidden = false
        self.imageViewKomsomolHQ.image = getStrongpoint(strongpoint: .StrongpointStalingradKomsomolHQ)
    }
    
    func loadStalingradRailwayCrossing() {
        self.imageViewRailwayCrossing.isHidden = false
        self.imageViewRailwayCrossing.image = getStrongpoint(strongpoint: .StrongpointStalingradRailwayCrossing)
    }
    
    func loadStalingradCarriageDepot() {
        self.imageViewCarriageDepot.isHidden = false
        self.imageViewCarriageDepot.image = getStrongpoint(strongpoint: .StrongpointStalingradCarriageDepot)
    }
    
    func loadStalingradTrainStation() {
        self.imageViewTrainStation.isHidden = false
        self.imageViewTrainStation.image = getStrongpoint(strongpoint: .StrongpointStalingradTrainStation)
    }
    
    func loadStalingradHouseOfTheWorkers() {
        self.imageViewHouseOfTheWorkers.isHidden = false
        self.imageViewHouseOfTheWorkers.image = getStrongpoint(strongpoint: .StrongpointStalingradHouseOfTheWorkers)
    }
    
    func loadStalingradPavlovsHouse() {
        self.imageViewPavlovsHouse.isHidden = false
        self.imageViewPavlovsHouse.image = getStrongpoint(strongpoint: .StrongpointStalingradPavlovsHouse)
    }
    
    func loadStalingradTheBrewery() {
        self.imageViewTheBrewery.isHidden = false
        self.imageViewTheBrewery.image = getStrongpoint(strongpoint: .StrongpointStalingradTheBrewery)
    }
    
    func loadStalingradLShapedHouse() {
        self.imageViewLShapedHouse.isHidden = false
        self.imageViewLShapedHouse.image = getStrongpoint(strongpoint: .StrongpointStalingradLShapedHouse)
    }
    
    func loadStalingradGrudininsMill() {
        self.imageViewGrudininsMill.isHidden = false
        self.imageViewGrudininsMill.image = getStrongpoint(strongpoint: .StrongpointStalingradGrudininsMill)
    }
    func loadStalingradVolgaBanks() {
        self.imageViewVolgaBanks.isHidden = false
        self.imageViewVolgaBanks.image = getStrongpoint(strongpoint: .StrongpointStalingradVolgaBanks)
    }
}

extension StalingradBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
