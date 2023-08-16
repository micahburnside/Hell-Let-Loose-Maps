//
//  ElAlameinBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/8/23.
//

import UIKit

class ElAlameinBaseLayerViewController: BaseViewController {
    
    var updateElAlameinMapDelegate: UpdateElAlameinMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewVehicleDepot: UIImageView = {
        let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewArtilleryGuns: UIImageView = {
        let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewMiteiriyaRidge: UIImageView = {
        let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewHamletRuins: UIImageView = {
        let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewElMreir: UIImageView = {
        let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewWatchtower: UIImageView = {
        let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewDesertRatTrenches: UIImageView = {
        let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewOasis: UIImageView = {
        let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewValley: UIImageView = {
        let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewFuelDepot: UIImageView = {
        let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewAirfieldCommand: UIImageView = {
        let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewAirfieldHangars: UIImageView = {
        let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewCliffsideVillage: UIImageView = {
        let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewAmbushedConvoy: UIImageView = {
        let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewQuarry: UIImageView = {
        let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView0.addSubview(imageViewVehicleDepot)
        imageView0.addSubview(imageViewArtilleryGuns)
        imageView0.addSubview(imageViewMiteiriyaRidge)
        imageView0.addSubview(imageViewHamletRuins)
        imageView0.addSubview(imageViewElMreir)
        imageView0.addSubview(imageViewWatchtower)
        imageView0.addSubview(imageViewDesertRatTrenches)
        imageView0.addSubview(imageViewOasis)
        imageView0.addSubview(imageViewValley)
        imageView0.addSubview(imageViewFuelDepot)
        imageView0.addSubview(imageViewAirfieldCommand)
        imageView0.addSubview(imageViewAirfieldHangars)
        imageView0.addSubview(imageViewCliffsideVillage)
        imageView0.addSubview(imageViewAmbushedConvoy)
        imageView0.addSubview(imageViewQuarry)
        
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewVehicleDepot.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewVehicleDepot.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewVehicleDepot.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewVehicleDepot.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewArtilleryGuns.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewArtilleryGuns.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewArtilleryGuns.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewArtilleryGuns.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMiteiriyaRidge.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewMiteiriyaRidge.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewMiteiriyaRidge.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewMiteiriyaRidge.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHamletRuins.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewHamletRuins.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewHamletRuins.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewHamletRuins.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewElMreir.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewElMreir.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewElMreir.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewElMreir.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWatchtower.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewWatchtower.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewWatchtower.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewWatchtower.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDesertRatTrenches.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewDesertRatTrenches.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewDesertRatTrenches.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewDesertRatTrenches.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewOasis).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewOasis).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewOasis).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewOasis).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewValley.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewValley.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewValley.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewValley.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFuelDepot.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewFuelDepot.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewFuelDepot.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewFuelDepot.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewAirfieldCommand.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewAirfieldCommand.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewAirfieldCommand.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewAirfieldCommand.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageViewLumberyard subView constraints to be equal to it's parent view imageView that is inside a scrollView
        imageViewAirfieldHangars.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewAirfieldHangars.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewAirfieldHangars.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewAirfieldHangars.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCliffsideVillage.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewCliffsideVillage.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewCliffsideVillage.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewCliffsideVillage.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewAmbushedConvoy).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewAmbushedConvoy).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewAmbushedConvoy).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewAmbushedConvoy).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewQuarry).leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        (imageViewQuarry).trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        (imageViewQuarry).topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        (imageViewQuarry).bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView0.image = getMap(mapName: .ElAlamein, layerType: .ElAlameinBaseLayer)
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
    
    @IBAction func shareElAlameinMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotElAlameinMap() else { return }
        shareElAlameinMapImage(screenshot: screenshot)
        func shareElAlameinMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
        
    }
    
    func snapshotElAlameinMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView0.intrinsicContentSize)
        imageView0.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectElAlameinLayers", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "SelectElAlameinLayersViewController") as? SelectElAlameinLayersViewController {
            controller.modalPresentationStyle = .popover
            controller.updateElAlameinMapDelegate = self
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
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VEHICLEDEPOT) {
            self.loadElAlameinVehicleDepot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ARTILERYGUNS) {
            self.loadElAlameinArtilleryGuns()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_MITEIRIYARIDGE) {
            self.loadElAlameinMiteiriyaRidge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_HAMLETRUINS) {
            self.loadElAlameinHameltRuins()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ELMREIR) {
            self.loadElAlameinElMreir()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_WATCHTOWER) {
            self.loadElAlameinWatchtower()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_DESERTRATTRENCHES) {
            self.loadElAlameinDesertRatTrenches()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_OASIS) {
            self.loadElAlameinOasis()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VALLEY) {
            self.loadElAlameinValley()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_FUELDEPOT) {
            self.loadElAlameinFuelDepot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDCOMMAND) {
            self.loadElAlameinAirfieldCommand()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDHANGARS) {
            self.loadElAlameinAirfieldHangars()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_CLIFFSIDEVILLAGE) {
            self.loadElAlameinCliffsideVillage()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AMBUSHEDCONVOY) {
            self.loadElAlameinAmbushedConvoy()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_QUARRY) {
            self.loadElAlameinQuarry()
        }
    }
    
    func hideDrielStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VEHICLEDEPOT) == false {
            self.removeElAlameinVehicleDepot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ARTILERYGUNS) == false {
            self.removeElAlameinArtilleryGuns()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_MITEIRIYARIDGE) == false {
            self.removeElAlameinMiteiriyaRidge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_HAMLETRUINS) == false {
            self.removeElAlameinHameltRuins()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ELMREIR) == false {
            self.removeElAlameinElMreir()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_WATCHTOWER) == false {
            self.removeElAlameinWatchtower()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_DESERTRATTRENCHES) == false {
            self.removeElAlameinDesertRatTrenches()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_OASIS) == false {
            self.removeElAlameinOasis()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VALLEY) == false {
            self.removeElAlameinValley()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_FUELDEPOT) == false {
            self.removeElAlameinFuelDepot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDCOMMAND) == false {
            self.removeElAlameinAirfieldCommand()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDHANGARS) == false {
            self.removeElAlameinAirfieldHangars()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_CLIFFSIDEVILLAGE) == false {
            self.removeElAlameinCliffsideVillage()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AMBUSHEDCONVOY) == false {
            self.removeElAlameinAmbushedConvoy()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_QUARRY) == false {
            self.removeElAlameinQuarry()
        }
    }
    
}
//MARK:- Sizing
extension ElAlameinBaseLayerViewController {
    
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
extension ElAlameinBaseLayerViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView0
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        updateConstraintsForSize(view.bounds.size)
    }
}

extension ElAlameinBaseLayerViewController: UpdateElAlameinMapDelegate {
    func removeElAlameinVehicleDepot() {
        self.imageViewVehicleDepot.isHidden = true
    }
    
    func removeElAlameinArtilleryGuns() {
        self.imageViewArtilleryGuns.isHidden = true
    }
    
    func removeElAlameinMiteiriyaRidge() {
        self.imageViewMiteiriyaRidge.isHidden = true
    }
    
    func removeElAlameinHameltRuins() {
        self.imageViewHamletRuins.isHidden = true
    }
    
    func removeElAlameinElMreir() {
        self.imageViewElMreir.isHidden = true
    }
    
    func removeElAlameinWatchtower() {
        self.imageViewWatchtower.isHidden = true
    }
    
    func removeElAlameinDesertRatTrenches() {
        self.imageViewDesertRatTrenches.isHidden = true
    }
    
    func removeElAlameinOasis() {
        self.imageViewOasis.isHidden = true
    }
    
    func removeElAlameinValley() {
        self.imageViewValley.isHidden = true
    }
    
    func removeElAlameinFuelDepot() {
        self.imageViewFuelDepot.isHidden = true
    }
    
    func removeElAlameinAirfieldCommand() {
        self.imageViewAirfieldCommand.isHidden = true
    }
    
    func removeElAlameinAirfieldHangars() {
        self.imageViewAirfieldHangars.isHidden = true
    }
    
    func removeElAlameinCliffsideVillage() {
        self.imageViewCliffsideVillage.isHidden = true
    }
    
    func removeElAlameinAmbushedConvoy() {
        self.imageViewAmbushedConvoy.isHidden = true
    }
    
    func removeElAlameinQuarry() {
        self.imageViewQuarry.isHidden = true
    }
    
    func loadElAlameinVehicleDepot() {
        self.imageViewVehicleDepot.isHidden = false
        self.imageViewVehicleDepot.image = getStrongpoint(strongpoint: .StrongpointElAlameinVehicleDepot)
    }
    
    func loadElAlameinArtilleryGuns() {
        self.imageViewArtilleryGuns.isHidden = false
        self.imageViewArtilleryGuns.image = getStrongpoint(strongpoint: .StrongpointElAlameinArtilleryGuns)
    }
    
    func loadElAlameinMiteiriyaRidge() {
        self.imageViewMiteiriyaRidge.isHidden = false
        self.imageViewMiteiriyaRidge.image = getStrongpoint(strongpoint: .StrongpointElAlameinMiteiriyaRidge)
    }
    
    func loadElAlameinHameltRuins() {
        self.imageViewHamletRuins.isHidden = false
        self.imageViewHamletRuins.image = getStrongpoint(strongpoint: .StrongpointElAlameinHamletRuins)
    }
    
    func loadElAlameinElMreir() {
        self.imageViewElMreir.isHidden = false
        self.imageViewElMreir.image = getStrongpoint(strongpoint: .StrongpointElAlameinElMreir)
    }
    
    func loadElAlameinWatchtower() {
        self.imageViewWatchtower.isHidden = false
        self.imageViewWatchtower.image = getStrongpoint(strongpoint: .StrongpointElAlameinWatchtower)
    }
    
    func loadElAlameinDesertRatTrenches() {
        self.imageViewDesertRatTrenches.isHidden = false
        self.imageViewDesertRatTrenches.image = getStrongpoint(strongpoint: .StrongpointElAlameinDesertRatTrenches)
    }
    
    func loadElAlameinOasis() {
        self.imageViewOasis.isHidden = false
        self.imageViewOasis.image = getStrongpoint(strongpoint: .StrongpointElAlameinOasis)
    }
    
    func loadElAlameinValley() {
        self.imageViewValley.isHidden = false
        self.imageViewValley.image = getStrongpoint(strongpoint: .StrongpointElAlameinValley)
    }
    
    func loadElAlameinFuelDepot() {
        self.imageViewFuelDepot.isHidden = false
        self.imageViewFuelDepot.image = getStrongpoint(strongpoint: .StrongpointElAlameinFuelDepot)
    }
    
    func loadElAlameinAirfieldCommand() {
        self.imageViewAirfieldCommand.isHidden = false
        self.imageViewAirfieldCommand.image = getStrongpoint(strongpoint: .StrongpointElAlameinAirfieldCommand)
    }
    
    func loadElAlameinAirfieldHangars() {
        self.imageViewAirfieldHangars.isHidden = false
        self.imageViewAirfieldHangars.image = getStrongpoint(strongpoint: .StrongpointElAlameinAirfieldHangars)
    }
    
    func loadElAlameinCliffsideVillage() {
        self.imageViewCliffsideVillage.isHidden = false
        self.imageViewCliffsideVillage.image = getStrongpoint(strongpoint: .StrongpointElAlameinCliffsideVillage)
    }
    
    func loadElAlameinAmbushedConvoy() {
        self.imageViewAmbushedConvoy.isHidden = false
        self.imageViewAmbushedConvoy.image = getStrongpoint(strongpoint: .StrongpointElAlameinAmbushedConvoy)
    }
    
    func loadElAlameinQuarry() {
        self.imageViewQuarry.isHidden = false
        self.imageViewQuarry.image = getStrongpoint(strongpoint: .StrongpointElAlameinQuarry)
    }
    
}

extension ElAlameinBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}

