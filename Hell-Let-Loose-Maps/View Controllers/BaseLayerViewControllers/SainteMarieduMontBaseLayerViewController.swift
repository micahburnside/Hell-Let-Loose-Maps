//
//  SainteMarieduMontBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class SainteMarieduMontBaseLayerViewController: BaseViewController {
    
    var updateSainteMarieduMontMapDelegate: UpdateSainteMarieduMontMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewWintersLanding: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewLeGrandChemin: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewTheBarn: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewBrecourtBattery: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewCattlesheds: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewRueDeLaGare: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewTheDugout: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewAANetwork: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewPierresFarm: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewHugosFarm: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewTheHamlet: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewSteMarieDuMont: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewTheCorner: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewHill6: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewTheFields: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewWintersLanding)
        imageView.addSubview(imageViewLeGrandChemin)
        imageView.addSubview(imageViewTheBarn)
        imageView.addSubview(imageViewBrecourtBattery)
        imageView.addSubview(imageViewCattlesheds)
        imageView.addSubview(imageViewRueDeLaGare)
        imageView.addSubview(imageViewTheDugout)
        imageView.addSubview(imageViewAANetwork)
        imageView.addSubview(imageViewPierresFarm)
        imageView.addSubview(imageViewHugosFarm)
        imageView.addSubview(imageViewTheHamlet)
        imageView.addSubview(imageViewSteMarieDuMont)
        imageView.addSubview(imageViewTheCorner)
        imageView.addSubview(imageViewHill6)
        imageView.addSubview(imageViewTheFields)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWintersLanding.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWintersLanding.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWintersLanding.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWintersLanding.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLeGrandChemin.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLeGrandChemin.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLeGrandChemin.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLeGrandChemin.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheBarn.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheBarn.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheBarn.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheBarn.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBrecourtBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBrecourtBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBrecourtBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBrecourtBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCattlesheds.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewCattlesheds.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewCattlesheds.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewCattlesheds.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRueDeLaGare.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRueDeLaGare.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRueDeLaGare.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRueDeLaGare.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheDugout.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheDugout.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheDugout.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheDugout.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewAANetwork).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewAANetwork).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewAANetwork).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewAANetwork).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewPierresFarm.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewPierresFarm.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewPierresFarm.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewPierresFarm.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHugosFarm.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewHugosFarm.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewHugosFarm.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewHugosFarm.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheHamlet.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheHamlet.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheHamlet.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheHamlet.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSteMarieDuMont.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewSteMarieDuMont.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewSteMarieDuMont.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewSteMarieDuMont.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheCorner.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheCorner.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheCorner.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheCorner.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHill6.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewHill6.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewHill6.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewHill6.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewTheFields).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewTheFields).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewTheFields).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewTheFields).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .SainteMarieduMont, layerType: .SainteMarieduMontTAC)
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
        showSainteMarieduMontStrongpoints()
        hideSainteMarieduMontStrongpoints()
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
        let storyboard = UIStoryboard.init(name: "SelectSainteMarieduMontLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectSainteMarieduMontLayersViewController") as? SelectSainteMarieduMontLayersViewController {
              controller.modalPresentationStyle = .popover
              controller.updateSainteMarieduMontMapDelegate = self
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

    @IBAction func shareSainteMarieduMontMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotSainteMarieduMontMap() else { return }
        shareSainteMarieduMontMapImage(screenshot: screenshot)
        func shareSainteMarieduMontMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
    
    }
    
    func snapshotSainteMarieduMontMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    func showSainteMarieduMontStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_WINTERSLANDING) {
            self.loadSainteMarieduMontWintersLanding()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_LEGRANDECHEMIN) {
            self.loadSainteMarieduMontLeGrandChemin()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEBARN) {
            self.loadSainteMarieduMontTheBarn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_BRECOURTBATTERY) {
            self.loadSainteMarieduMontBrecourtBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_CATTLESHEDS) {
            self.loadSainteMarieduMontCattlesheds()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_RUEDELAGARE) {
            self.loadSainteMarieduMontRueDeLaGare()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEDUGOUT) {
            self.loadSainteMarieduMontTheDugout()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_AANETWORK) {
            self.loadSainteMarieduMontAANetwork()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_PIERRESFARM) {
            self.loadSainteMarieduMontPierresFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HUGOSFARM) {
            self.loadSainteMarieduMontHugosFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEHAMLET) {
            self.loadSainteMarieduMontTheHamlet()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_STEMARIEDUMONT) {
            self.loadSainteMarieduMontSteMarieDuMont()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THECORNER) {
            self.loadSainteMarieduMontTheCorner()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HILL6) {
            self.loadSainteMarieduMontHill6()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEFIELDS) {
            self.loadSainteMarieduMontTheFields()
        }
    }
    
    func hideSainteMarieduMontStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_WINTERSLANDING) == false {
            self.removeSainteMarieduMontWintersLanding()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_LEGRANDECHEMIN) == false {
            self.removeSainteMarieduMontLeGrandChemin()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEBARN) == false {
            self.removeSainteMarieduMontTheBarn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_BRECOURTBATTERY) == false {
            self.removeSainteMarieduMontBrecourtBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_CATTLESHEDS) == false {
            self.removeSainteMarieduMontCattlesheds()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_RUEDELAGARE) == false {
            self.removeSainteMarieduMontRueDeLaGare()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEDUGOUT) == false {
            self.removeSainteMarieduMontTheDugout()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_AANETWORK) == false {
            self.removeSainteMarieduMontAANetwork()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_PIERRESFARM) == false {
            self.removeSainteMarieduMontPierresFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HUGOSFARM) == false {
            self.removeSainteMarieduMontHugosFarm()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEHAMLET) == false {
            self.removeSainteMarieduMontTheHamlet()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_STEMARIEDUMONT) == false {
            self.removeSainteMarieduMontSteMarieDuMont()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THECORNER) == false {
            self.removeSainteMarieduMontTheCorner()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HILL6) == false {
            self.removeSainteMarieduMontHill6()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEFIELDS) == false {
            self.removeSainteMarieduMontTheFields()
        }
    }
    
}
//MARK:- Sizing
extension SainteMarieduMontBaseLayerViewController {
    
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
extension SainteMarieduMontBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension SainteMarieduMontBaseLayerViewController: UpdateSainteMarieduMontMapDelegate {
    
    func removeSainteMarieduMontWintersLanding() {
        self.imageViewWintersLanding.isHidden = true
    }
    
    func removeSainteMarieduMontLeGrandChemin() {
        self.imageViewLeGrandChemin.isHidden = true
    }
    
    func removeSainteMarieduMontTheBarn() {
        self.imageViewTheBarn.isHidden = true
    }
    
    func removeSainteMarieduMontBrecourtBattery() {
        self.imageViewBrecourtBattery.isHidden = true
    }
    
    func removeSainteMarieduMontCattlesheds() {
        self.imageViewCattlesheds.isHidden = true
    }
    
    func removeSainteMarieduMontRueDeLaGare() {
        self.imageViewRueDeLaGare.isHidden = true
    }
    
    func removeSainteMarieduMontTheDugout() {
        self.imageViewTheDugout.isHidden = true
    }
    
    func removeSainteMarieduMontAANetwork() {
        self.imageViewAANetwork.isHidden = true
    }
    
    func removeSainteMarieduMontPierresFarm() {
        self.imageViewPierresFarm.isHidden = true
    }
    
    func removeSainteMarieduMontHugosFarm() {
        self.imageViewHugosFarm.isHidden = true
    }
    
    func removeSainteMarieduMontTheHamlet() {
        self.imageViewTheHamlet.isHidden = true
    }
    
    func removeSainteMarieduMontSteMarieDuMont() {
        self.imageViewSteMarieDuMont.isHidden = true
    }
    
    func removeSainteMarieduMontTheCorner() {
        self.imageViewTheCorner.isHidden = true
    }
    
    func removeSainteMarieduMontHill6() {
        self.imageViewHill6.isHidden = true
    }
    
    func removeSainteMarieduMontTheFields() {
        self.imageViewTheFields.isHidden = true
    }
    
    func loadSainteMarieduMontWintersLanding() {
        self.imageViewWintersLanding.isHidden = false
        self.imageViewWintersLanding.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontWintersLanding)
    }
    
    func loadSainteMarieduMontLeGrandChemin() {
        self.imageViewLeGrandChemin.isHidden = false
        self.imageViewLeGrandChemin.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontLeGrandChemin)
    }
    
    func loadSainteMarieduMontTheBarn() {
        self.imageViewTheBarn.isHidden = false
        self.imageViewTheBarn.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontTheBarn)
    }
    
    func loadSainteMarieduMontBrecourtBattery() {
        self.imageViewBrecourtBattery.isHidden = false
        self.imageViewBrecourtBattery.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontBrecourtBattery)
    }
    
    func loadSainteMarieduMontCattlesheds() {
        self.imageViewCattlesheds.isHidden = false
        self.imageViewCattlesheds.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontCattlesheds)
    }
    
    func loadSainteMarieduMontRueDeLaGare() {
        self.imageViewRueDeLaGare.isHidden = false
        self.imageViewRueDeLaGare.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontRueDeLaGare)
    }
    
    func loadSainteMarieduMontTheDugout() {
        self.imageViewTheDugout.isHidden = false
        self.imageViewTheDugout.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontTheDugout)
    }
    
    func loadSainteMarieduMontAANetwork() {
        self.imageViewAANetwork.isHidden = false
        self.imageViewAANetwork.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontAANetwork)
    }
    
    func loadSainteMarieduMontPierresFarm() {
        self.imageViewPierresFarm.isHidden = false
        self.imageViewPierresFarm.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontPierresFarm)
    }
    
    func loadSainteMarieduMontHugosFarm() {
        self.imageViewHugosFarm.isHidden = false
        self.imageViewHugosFarm.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontHugosFarm)
    }
    
    func loadSainteMarieduMontTheHamlet() {
        self.imageViewTheHamlet.isHidden = false
        self.imageViewTheHamlet.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontTheHamlet)
    }
    
    func loadSainteMarieduMontSteMarieDuMont() {
        self.imageViewSteMarieDuMont.isHidden = false
        self.imageViewSteMarieDuMont.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontSteMarieDuMont)
    }
    
    func loadSainteMarieduMontTheCorner() {
        self.imageViewTheCorner.isHidden = false
        self.imageViewTheCorner.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontTheCorner)
    }
    
    func loadSainteMarieduMontHill6() {
        self.imageViewHill6.isHidden = false
        self.imageViewHill6.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontHill6)
    }
    
    func loadSainteMarieduMontTheFields() {
        self.imageViewTheFields.isHidden = false
        self.imageViewTheFields.image = getStrongpoint(strongpoint: .StrongpointSainteMarieduMontTheFields)
    }
}

extension SainteMarieduMontBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
