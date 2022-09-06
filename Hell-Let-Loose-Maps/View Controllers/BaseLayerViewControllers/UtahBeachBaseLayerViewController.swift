//
//  UtahBeachBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class UtahBeachBaseLayerViewController: BaseViewController {
    
    var updateUtahBeachMapDelegate: UpdateUtahBeachMapDelegate!
    
    private let imageViewMammutRadar: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewFloodedHouse: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewSainteMarieApproach: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewSunkenBridge: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewLaGrandeCrique: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewDrownedFields: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewWN4: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewTheChapel: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewWN7: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewAABattery: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewHill5: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewWN5: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewRedRoofHouse: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewTareGreen: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewUncleRed: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    var photoName: String?
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectUtahBeachLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectUtahBeachLayersViewController") as? SelectUtahBeachLayersViewController {
              controller.updateUtahBeachMapDelegate = self
              if let sheet = controller.sheetPresentationController {
                  sheet.detents = [ .medium() ]
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
            if scrollView.zoomScale == 1 {
                scrollView.setZoomScale(2, animated: true)
            } else {
                scrollView.setZoomScale(1, animated: true)
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .UtahBeach, layerType: .UtahBeachBaseLayer)
        scrollView.delegate = self
        createImageViewLayerSubViews()
        doubleTapGesture()
    }
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showUtahBeachStrongpoints()
        hideUtahBeachStrongpoints()
    }
    
    @IBAction func shareUtahBeachMapLayer(_ sender: UIBarButtonItem) {
        
        guard let screenshot = self.snapshotUtahBeachMap() else { return }
        
        shareUtahBeachMapImage(screenshot: screenshot)
        
    }
    
    func shareUtahBeachMapImage(screenshot: UIImage) {
        // save or share
        
        DispatchQueue.main.async {
            
            let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
             
             self.present(shareSheet, animated: true, completion: nil)
            
        }

    }
    
    func snapshotUtahBeachMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        let savedContentOffset = scrollView.contentOffset
        let savedFrame = scrollView.frame
        scrollView.contentOffset = CGPoint.zero
        imageView.frame = CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        scrollView.contentOffset = savedContentOffset
        imageView.frame = savedFrame
        UIGraphicsEndImageContext()
        return image
    }
    
    func showUtahBeachStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_MAMMUTRADAR) {
            self.loadUtahBeachMammutRadar()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_FLOODEDHOUSE) {
            self.loadUtahBeachFloodedHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SAINTEMARIEAPPROACH) {
            self.loadUtahBeachSainteMarieApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SUNKENBRIDGE) {
            self.loadUtahBeachSunkenBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_LAGRANDECRIQUE) {
            self.loadUtahBeachLaGrandeCrique()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_DROWNEDFIELDS) {
            self.loadUtahBeachDrownedFields()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN4) {
            self.loadUtahBeachWN4()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_THECHAPEL) {
            self.loadUtahBeachTheChapel()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN7) {
            self.loadUtahBeachWN7()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_AABATTERY) {
            self.loadUtahBeachAABattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_HILL5) {
            self.loadUtahBeachHill5()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN5) {
            self.loadUtahBeachWN5()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_TAREGREEN) {
            self.loadUtahBeachRedRoofHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_REDROOFHOUSE) {
            self.loadUtahBeachTareGreen()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_UNCLERED) {
            self.loadUtahBeachUncleRed()
        }
    }
    
    func hideUtahBeachStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_MAMMUTRADAR) == false {
            self.removeUtahBeachMammutRadar()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_FLOODEDHOUSE) == false {
            self.removeUtahBeachFloodedHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SAINTEMARIEAPPROACH) == false {
            self.removeUtahBeachSainteMarieApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SUNKENBRIDGE) == false {
            self.removeUtahBeachSainteMarieApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_LAGRANDECRIQUE) == false {
            self.removeUtahBeachLaGrandeCrique()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_DROWNEDFIELDS) == false {
            self.removeUtahBeachDrownedFields()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN4) == false {
            self.removeUtahBeachWN4()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_THECHAPEL) == false {
            self.removeUtahBeachTheChapel()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN7) == false {
            self.removeUtahBeachWN7()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_AABATTERY) == false {
            self.removeUtahBeachAABattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_HILL5) == false {
            self.removeUtahBeachHill5()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN5) == false {
            self.removeUtahBeachWN5()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_TAREGREEN) == false {
            self.removeUtahBeachRedRoofHouse()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_REDROOFHOUSE) == false {
            self.removeUtahBeachTareGreen()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_UNCLERED) == false {
            self.removeUtahBeachUncleRed()
        }
    }
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewMammutRadar)
        imageView.addSubview(imageViewFloodedHouse)
        imageView.addSubview(imageViewSainteMarieApproach)
        imageView.addSubview(imageViewSunkenBridge)
        imageView.addSubview(imageViewLaGrandeCrique)
        imageView.addSubview(imageViewDrownedFields)
        imageView.addSubview(imageViewWN4)
        imageView.addSubview(imageViewTheChapel)
        imageView.addSubview(imageViewWN7)
        imageView.addSubview(imageViewAABattery)
        imageView.addSubview(imageViewHill5)
        imageView.addSubview(imageViewWN5)
        imageView.addSubview(imageViewRedRoofHouse)
        imageView.addSubview(imageViewTareGreen)
        imageView.addSubview(imageViewUncleRed)

        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMammutRadar.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewMammutRadar.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewMammutRadar.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewMammutRadar.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFloodedHouse.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewFloodedHouse.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewFloodedHouse.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewFloodedHouse.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSainteMarieApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewSainteMarieApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewSainteMarieApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewSainteMarieApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSunkenBridge.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewSunkenBridge.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewSunkenBridge.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewSunkenBridge.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLaGrandeCrique.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLaGrandeCrique.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLaGrandeCrique.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLaGrandeCrique.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDrownedFields.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDrownedFields.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDrownedFields.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDrownedFields.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWN4.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWN4.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWN4.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWN4.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewTheChapel).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewTheChapel).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewTheChapel).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewTheChapel).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWN7.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWN7.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWN7.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWN7.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewAABattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewAABattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewAABattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewAABattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHill5.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewHill5.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewHill5.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewHill5.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWN5.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWN5.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWN5.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWN5.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRedRoofHouse.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRedRoofHouse.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRedRoofHouse.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRedRoofHouse.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewTareGreen).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewTareGreen).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewTareGreen).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewTareGreen).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewUncleRed).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewUncleRed).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewUncleRed).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewUncleRed).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
}
//MARK:- Sizing
extension UtahBeachBaseLayerViewController {
    
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
extension UtahBeachBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension UtahBeachBaseLayerViewController: UpdateUtahBeachMapDelegate {

    func removeUtahBeachMammutRadar() {
        self.imageViewMammutRadar.isHidden = true
    }
    
    func removeUtahBeachFloodedHouse() {
        self.imageViewFloodedHouse.isHidden = true
    }
    
    func removeUtahBeachSainteMarieApproach() {
        self.imageViewSainteMarieApproach.isHidden = true
    }
    
    func removeUtahBeachSunkenBridge() {
        self.imageViewSunkenBridge.isHidden = true
    }
    
    func removeUtahBeachLaGrandeCrique() {
        self.imageViewLaGrandeCrique.isHidden = true
    }
    
    func removeUtahBeachDrownedFields() {
        self.imageViewDrownedFields.isHidden = true
    }
    
    func removeUtahBeachWN4() {
        self.imageViewWN4.isHidden = true
    }
    
    func removeUtahBeachTheChapel() {
        self.imageViewTheChapel.isHidden = true
    }
    
    func removeUtahBeachWN7() {
        self.imageViewWN7.isHidden = true
    }
    
    func removeUtahBeachAABattery() {
        self.imageViewAABattery.isHidden = true
    }
    
    func removeUtahBeachHill5() {
        self.imageViewHill5.isHidden = true
    }
    
    func removeUtahBeachWN5() {
        self.imageViewWN5.isHidden = true
    }
    
    func removeUtahBeachRedRoofHouse() {
        self.imageViewRedRoofHouse.isHidden = true
    }
    
    func removeUtahBeachTareGreen() {
        self.imageViewTareGreen.isHidden = true
    }
    
    func removeUtahBeachUncleRed() {
        self.imageViewUncleRed.isHidden = true
    }

    func loadUtahBeachMammutRadar() {
        self.imageViewMammutRadar.isHidden = false
        self.imageViewMammutRadar.image = getStrongpoint(strongpoint: .StrongpointUtahBeachMammutRadar)
    }
    
    func loadUtahBeachFloodedHouse() {
        self.imageViewFloodedHouse.isHidden = false
        self.imageViewFloodedHouse.image = getStrongpoint(strongpoint: .StrongpointUtahBeachFloodedHouse)
    }
    
    func loadUtahBeachSainteMarieApproach() {
        self.imageViewSainteMarieApproach.isHidden = false
        self.imageViewSainteMarieApproach.image = getStrongpoint(strongpoint: .StrongpointUtahBeachSainteMarieApproach)
    }
    
    func loadUtahBeachSunkenBridge() {
        self.imageViewSunkenBridge.isHidden = false
        self.imageViewSunkenBridge.image = getStrongpoint(strongpoint: .StrongpointUtahBeachSunkenBridge)
    }
    
    func loadUtahBeachLaGrandeCrique() {
        self.imageViewLaGrandeCrique.isHidden = false
        self.imageViewLaGrandeCrique.image = getStrongpoint(strongpoint: .StrongpointUtahBeachLaGrandeCrique)
    }
    
    func loadUtahBeachDrownedFields() {
        self.imageViewDrownedFields.isHidden = false
        self.imageViewDrownedFields.image = getStrongpoint(strongpoint: .StrongpointUtahBeachDrownedFields)
    }
    
    func loadUtahBeachWN4() {
        self.imageViewWN4.isHidden = false
        self.imageViewWN4.image = getStrongpoint(strongpoint: .StrongpointUtahBeachWN4)
    }
    
    func loadUtahBeachTheChapel() {
        self.imageViewTheChapel.isHidden = false
        self.imageViewTheChapel.image = getStrongpoint(strongpoint: .StrongpointUtahBeachTheChapel)
    }
    
    func loadUtahBeachWN7() {
        self.imageViewWN7.isHidden = false
        self.imageViewWN7.image = getStrongpoint(strongpoint: .StrongpointUtahBeachWN7)
    }
    
    func loadUtahBeachAABattery() {
        self.imageViewAABattery.isHidden = false
        self.imageViewAABattery.image = getStrongpoint(strongpoint: .StrongpointUtahBeachAABattery)
    }
    
    func loadUtahBeachHill5() {
        self.imageViewHill5.isHidden = false
        self.imageViewHill5.image = getStrongpoint(strongpoint: .StrongpointUtahBeachHill5)
    }
    
    func loadUtahBeachWN5() {
        self.imageViewWN5.isHidden = false
        self.imageViewWN5.image = getStrongpoint(strongpoint: .StrongpointUtahBeachWN5)
    }
    
    func loadUtahBeachRedRoofHouse() {
        self.imageViewRedRoofHouse.isHidden = false
        self.imageViewRedRoofHouse.image = getStrongpoint(strongpoint: .StrongpointUtahBeachRedRoofHouse)
    }
    
    func loadUtahBeachTareGreen() {
        self.imageViewTareGreen.isHidden = false
        self.imageViewTareGreen.image = getStrongpoint(strongpoint: .StrongpointUtahBeachTareGreen)
    }
    func loadUtahBeachUncleRed() {
        self.imageViewUncleRed.isHidden = false
        self.imageViewUncleRed.image = getStrongpoint(strongpoint: .StrongpointUtahBeachUncleRed)
    }
}
