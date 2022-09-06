//
//  RemagenBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class RemagenBaseLayerViewController: BaseViewController {
    
    var updateRemagenMapDelegate: UpdateRemagenMapDelegate!
    
    private let imageViewAlteLiebeBarsch: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewBewaldetKreuzung: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewDanRadart512: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewErpel: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewErpelerLey: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewKasbachOutlook: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewStSeverinChapel: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewLudendorffBridge: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewBauernhofAmRhein: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewRemagen: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewWMobelfabrik: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewSchlieffenAusweg: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewWaldburg: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewMuhlenweg: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewHagelkreuz: UIImageView = {
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
        let storyboard = UIStoryboard.init(name: "SelectRemagenLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectRemagenLayersViewController") as? SelectRemagenLayersViewController {
              controller.updateRemagenMapDelegate = self
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
            self.imageView.image = getMap(mapName: .Remagen, layerType: .RemagenBaseLayer)
        scrollView.delegate = self
        createImageViewLayerSubViews()
        doubleTapGesture()
    }
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showRemagenStrongpoints()
        hideRemagenStrongpoints()
    }
    
    @IBAction func shareRemagenMapLayer(_ sender: UIBarButtonItem) {
        
        guard let screenshot = self.snapshotRemagenMap() else { return }
        
        shareRemagenMapImage(screenshot: screenshot)
        
    }
    
    func shareRemagenMapImage(screenshot: UIImage) {
        // save or share
        
        DispatchQueue.main.async {
            
            let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
             
             self.present(shareSheet, animated: true, completion: nil)
            
        }

    }
    
    func snapshotRemagenMap() -> UIImage?
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
    
    func showRemagenStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ALTELIEBEBARSCH) {
            self.loadRemagenAlteLiebeBarsch()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_BEWALDETKREUZUNG) {
            self.loadRemagenBewaldetKreuzung()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_DANRADART512) {
            self.loadRemagenDanRadart512()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPEL) {
            self.loadRemagenErpel()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPELERLEY) {
            self.loadRemagenErpelerLey()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_KASBACHOVERLOOK) {
            self.loadRemagenKasbachOutlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_STSEVERINCHAPEL) {
            self.loadRemagenStSeverinChapel()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_LUDENDORFFBRIDGE) {
            self.loadRemagenLudendorffBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_BAUERNHOFAMRHEIN) {
            self.loadRemagenBauernhofAmRhein()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_REMAGEN) {
            self.loadRemagenRemagen()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_MOBELFABRIK) {
            self.loadRemagenMobelfabrik()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_SCHLIEFFENAUSWEG) {
            self.loadRemagenSchlieffenAusweg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_WALDBURG) {
            self.loadRemagenWaldburg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_MUHLENWEG) {
            self.loadRemagenMuhlenweg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_HAGELKREUZUNG) {
            self.loadRemagenHagelkreuz()
        }
    }
    
    func hideRemagenStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ALTELIEBEBARSCH) == false {
            self.removeRemagenAlteLiebeBarsch()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_BEWALDETKREUZUNG) == false {
            self.removeRemagenBewaldetKreuzung()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_DANRADART512) == false {
            self.removeRemagenDanRadart512()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPEL) == false {
            self.removeRemagenErpel()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPELERLEY) == false {
            self.removeRemagenErpelerLey()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_KASBACHOVERLOOK) == false {
            self.removeRemagenKasbachOutlook()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_STSEVERINCHAPEL) == false {
            self.removeRemagenStSeverinChapel()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_LUDENDORFFBRIDGE) == false {
            self.removeRemagenLudendorffBridge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_BAUERNHOFAMRHEIN) == false {
            self.removeRemagenBauernhofAmRhein()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_REMAGEN) == false {
            self.removeRemagenRemagen()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_MOBELFABRIK) == false {
            self.removeRemagenMobelfabrik()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_SCHLIEFFENAUSWEG) == false {
            self.removeRemagenSchlieffenAusweg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_WALDBURG) == false {
            self.removeRemagenWaldburg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_MUHLENWEG) == false {
            self.removeRemagenMuhlenweg()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_HAGELKREUZUNG) == false {
            self.removeRemagenHagelkreuz()
        }
    }
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewAlteLiebeBarsch)
        imageView.addSubview(imageViewBewaldetKreuzung)
        imageView.addSubview(imageViewDanRadart512)
        imageView.addSubview(imageViewErpel)
        imageView.addSubview(imageViewErpelerLey)
        imageView.addSubview(imageViewKasbachOutlook)
        imageView.addSubview(imageViewStSeverinChapel)
        imageView.addSubview(imageViewLudendorffBridge)
        imageView.addSubview(imageViewBauernhofAmRhein)
        imageView.addSubview(imageViewRemagen)
        imageView.addSubview(imageViewWMobelfabrik)
        imageView.addSubview(imageViewSchlieffenAusweg)
        imageView.addSubview(imageViewWaldburg)
        imageView.addSubview(imageViewMuhlenweg)
        imageView.addSubview(imageViewHagelkreuz)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewAlteLiebeBarsch.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewAlteLiebeBarsch.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewAlteLiebeBarsch.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewAlteLiebeBarsch.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBewaldetKreuzung.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBewaldetKreuzung.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBewaldetKreuzung.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBewaldetKreuzung.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDanRadart512.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDanRadart512.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDanRadart512.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDanRadart512.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewErpel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewErpel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewErpel.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewErpel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewErpelerLey.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewErpelerLey.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewErpelerLey.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewErpelerLey.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewKasbachOutlook.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewKasbachOutlook.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewKasbachOutlook.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewKasbachOutlook.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewStSeverinChapel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewStSeverinChapel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewStSeverinChapel.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewStSeverinChapel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewLudendorffBridge).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewLudendorffBridge).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewLudendorffBridge).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewLudendorffBridge).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBauernhofAmRhein.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBauernhofAmRhein.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBauernhofAmRhein.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBauernhofAmRhein.bottomAnchor.constraint(equalTo: imageViewBauernhofAmRhein.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRemagen.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRemagen.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRemagen.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRemagen.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWMobelfabrik.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWMobelfabrik.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWMobelfabrik.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWMobelfabrik.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSchlieffenAusweg.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewSchlieffenAusweg.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewSchlieffenAusweg.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewSchlieffenAusweg.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWaldburg.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWaldburg.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWaldburg.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWaldburg.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMuhlenweg.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewMuhlenweg.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewMuhlenweg.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewMuhlenweg.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewHagelkreuz).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewHagelkreuz).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewHagelkreuz).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewHagelkreuz).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
}
//MARK:- Sizing
extension RemagenBaseLayerViewController {
    
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
extension RemagenBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension RemagenBaseLayerViewController: UpdateRemagenMapDelegate {
    
    func removeRemagenAlteLiebeBarsch() {
        self.imageViewAlteLiebeBarsch.isHidden = true
    }
    
    func removeRemagenBewaldetKreuzung() {
        self.imageViewBewaldetKreuzung.isHidden = true
    }
    
    func removeRemagenDanRadart512() {
        self.imageViewDanRadart512.isHidden = true
    }
    
    func removeRemagenErpel() {
        self.imageViewErpel.isHidden = true
    }
    
    func removeRemagenErpelerLey() {
        self.imageViewErpelerLey.isHidden = true
    }
    
    func removeRemagenKasbachOutlook() {
        self.imageViewKasbachOutlook.isHidden = true
    }
    
    func removeRemagenStSeverinChapel() {
        self.imageViewStSeverinChapel.isHidden = true
    }
    
    func removeRemagenLudendorffBridge() {
        self.imageViewLudendorffBridge.isHidden = true
    }
    
    func removeRemagenBauernhofAmRhein() {
        self.imageViewBauernhofAmRhein.isHidden = true
    }
    
    func removeRemagenRemagen() {
        self.imageViewRemagen.isHidden = true
    }
    
    func removeRemagenMobelfabrik() {
        self.imageViewWMobelfabrik.isHidden = true
    }
    
    func removeRemagenSchlieffenAusweg() {
        self.imageViewSchlieffenAusweg.isHidden = true
    }
    
    func removeRemagenWaldburg() {
        self.imageViewWaldburg.isHidden = true
    }
    
    func removeRemagenMuhlenweg() {
        self.imageViewMuhlenweg.isHidden = true
    }
    
    func removeRemagenHagelkreuz() {
        self.imageViewHagelkreuz.isHidden = true
    }
    
    func loadRemagenAlteLiebeBarsch() {
        self.imageViewAlteLiebeBarsch.isHidden = false
        self.imageViewAlteLiebeBarsch.image = getStrongpoint(strongpoint: .StrongpointRemagenAlteLiebeBarsch)
    }
    
    func loadRemagenBewaldetKreuzung() {
        self.imageViewBewaldetKreuzung.isHidden = false
        self.imageViewBewaldetKreuzung.image = getStrongpoint(strongpoint: .StrongpointRemagenBewaldetKreuzung)
    }
    
    func loadRemagenDanRadart512() {
        self.imageViewDanRadart512.isHidden = false
        self.imageViewDanRadart512.image = getStrongpoint(strongpoint: .StrongpointRemagenDanRadart512)
    }
    
    func loadRemagenErpel() {
        self.imageViewErpel.isHidden = false
        self.imageViewErpel.image = getStrongpoint(strongpoint: .StrongpointRemagenErpel)
    }
    
    func loadRemagenErpelerLey() {
        self.imageViewErpelerLey.isHidden = false
        self.imageViewErpelerLey.image = getStrongpoint(strongpoint: .StrongpointRemagenErpelerLey)
    }
    
    func loadRemagenKasbachOutlook() {
        self.imageViewKasbachOutlook.isHidden = false
        self.imageViewKasbachOutlook.image = getStrongpoint(strongpoint: .StrongpointRemagenKasbackOutlook)
    }
    
    func loadRemagenStSeverinChapel() {
        self.imageViewStSeverinChapel.isHidden = false
        self.imageViewStSeverinChapel.image = getStrongpoint(strongpoint: .StrongpointRemagenStSeverinChapen)
    }
    
    func loadRemagenLudendorffBridge() {
        self.imageViewLudendorffBridge.isHidden = false
        self.imageViewLudendorffBridge.image = getStrongpoint(strongpoint: .StrongpointRemagenLudendorffBridge)
    }
    
    func loadRemagenBauernhofAmRhein() {
        self.imageViewBauernhofAmRhein.isHidden = false
        self.imageViewBauernhofAmRhein.image = getStrongpoint(strongpoint: .StrongpointRemagenBauernhofAmRhein)
    }
    
    func loadRemagenRemagen() {
        self.imageViewRemagen.isHidden = false
        self.imageViewRemagen.image = getStrongpoint(strongpoint: .StrongpointRemagenRemagen)
    }
    
    func loadRemagenMobelfabrik() {
        self.imageViewWMobelfabrik.isHidden = false
        self.imageViewWMobelfabrik.image = getStrongpoint(strongpoint: .StrongpointRemagenMobelfabrik)
    }
    
    func loadRemagenSchlieffenAusweg() {
        self.imageViewSchlieffenAusweg.isHidden = false
        self.imageViewSchlieffenAusweg.image = getStrongpoint(strongpoint: .StrongpointRemagenSchlieffenAusweg)
    }
    
    func loadRemagenWaldburg() {
        self.imageViewWaldburg.isHidden = false
        self.imageViewWaldburg.image = getStrongpoint(strongpoint: .StrongpointRemagenWaldburg)
    }
    
    func loadRemagenMuhlenweg() {
        self.imageViewMuhlenweg.isHidden = false
        self.imageViewMuhlenweg.image = getStrongpoint(strongpoint: .StrongpointRemagenMuhlenweg)
    }
    
    func loadRemagenHagelkreuz() {
        self.imageViewHagelkreuz.isHidden = false
        self.imageViewHagelkreuz.image = getStrongpoint(strongpoint: .StrongpointRemagenHagelkreuz)
    }
}
