//
//  SainteMereEgliseBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class SainteMereEgliseBaseLayerViewController: BaseViewController {
    
    var updateSainteMereEgliseMapDelegate: UpdateSainteMereEgliseMapDelegate!
    
    private let imageViewFlakPosition: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewVaulaville: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewLaPrairie: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewRouteDuHaras: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewWesternApproach: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewRueDeGambosville: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewHospice: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewSteMereEglise: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewCheckpoint: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewArtilleryBattery: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewTheCemetery: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewMaisonDuCrique: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewLesVieuxVergers: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewTheDraw: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewRusseauDeFerme: UIImageView = {
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
        let storyboard = UIStoryboard.init(name: "SelectSainteMereEgliseLayers", bundle: nil)
          if let controller = storyboard.instantiateViewController(identifier: "SelectSainteMereEgliseLayersViewController") as? SelectSainteMereEgliseLayersViewController {
              controller.updateSainteMereEgliseMapDelegate = self
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
            self.imageView.image = getMap(mapName: .SainteMereEglise, layerType: .SainteMereEgliseBaseLayer)
        scrollView.delegate = self
        createImageViewLayerSubViews()
        doubleTapGesture()
    }
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showSainteMereEgliseStrongpoints()
        hideSainteMereEgliseStrongpoints()
    }
    
    @IBAction func shareSainteMereEgliseMapLayer(_ sender: UIBarButtonItem) {
        
        guard let screenshot = self.snapshotSainteMereEgliseMap() else { return }
        
        shareSainteMereEgliseMapImage(screenshot: screenshot)
        
    }
    
    func shareSainteMereEgliseMapImage(screenshot: UIImage) {
        // save or share
        
        DispatchQueue.main.async {
            
            let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
             
             self.present(shareSheet, animated: true, completion: nil)
            
        }

    }
    
    func snapshotSainteMereEgliseMap() -> UIImage?
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
    
    func showSainteMereEgliseStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_FLAKPOSITION) {
            self.loadSainteMereEgliseFlakPosition()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_VAULAVILLE) {
            self.loadSainteMereEgliseVaulaville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LAPRAIRIE) {
            self.loadSainteMereEgliseRouteDuHaras()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ROUTEDUHARAS) {
            self.loadSainteMereEgliseWesternApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_WESTERNAPPROACH) {
            self.loadSainteMereEgliseRueDeGambosville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUEDEGAMBOSVILLE) {
            self.loadSainteMereEgliseHospice()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_HOSPICE) {
            self.loadSainteMereEgliseSteMereEglise()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_STEMEREEGLISE) {
            self.loadSainteMereEgliseCheckpoint()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_CHECKPOINT) {
            self.loadSainteMereEgliseArtilleryBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ARTILLERYBATTERY) {
            self.loadSainteMereEgliseTheCemetery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THECEMETERY) {
            self.loadSainteMereEgliseMaisonDuCrique()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_MAISONDUCRIQUE) {
            self.loadSainteMereEgliseLaPrairie()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LESVIEUXVERGERS) {
            self.loadSainteMereEgliseLesVieuxVergers()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THEDRAW) {
            self.loadSainteMereEgliseTheDraw()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUSSEAUDEFERME) {
            self.loadSainteMereEgliseRusseauDeFerme()
        }
    }
    
    func hideSainteMereEgliseStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_FLAKPOSITION) == false {
            self.removeSainteMereEgliseFlakPosition()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_VAULAVILLE) == false {
            self.removeSainteMereEgliseVaulaville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LAPRAIRIE) == false {
            self.removeSainteMereEgliseLaPrairie()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ROUTEDUHARAS) == false {
            self.removeSainteMereEgliseRouteDuHaras()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_WESTERNAPPROACH) == false {
            self.removeSainteMereEgliseWesternApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUEDEGAMBOSVILLE) == false {
            self.removeSainteMereEgliseRueDeGambosville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_HOSPICE) == false {
            self.removeSainteMereEgliseHospice()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_STEMEREEGLISE) == false {
            self.removeSainteMereEgliseSteMereEglise()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_CHECKPOINT) == false {
            self.removeSainteMereEgliseCheckpoint()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ARTILLERYBATTERY) == false {
            self.removeSainteMereEgliseArtilleryBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THECEMETERY) == false {
            self.removeSainteMereEgliseTheCemetery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_MAISONDUCRIQUE) == false {
            self.removeSainteMereEgliseMaisonDuCrique()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LESVIEUXVERGERS) == false {
            self.removeSainteMereEgliseLesVieuxVergers()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THEDRAW) == false {
            self.removeSainteMereEgliseTheDraw()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUSSEAUDEFERME) == false {
            self.removeSainteMereEgliseRusseauDeFerme()
        }
    }
    
    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewFlakPosition)
        imageView.addSubview(imageViewVaulaville)
        imageView.addSubview(imageViewLaPrairie)
        imageView.addSubview(imageViewRouteDuHaras)
        imageView.addSubview(imageViewWesternApproach)
        imageView.addSubview(imageViewRueDeGambosville)
        imageView.addSubview(imageViewHospice)
        imageView.addSubview(imageViewSteMereEglise)
        imageView.addSubview(imageViewCheckpoint)
        imageView.addSubview(imageViewArtilleryBattery)
        imageView.addSubview(imageViewTheCemetery)
        imageView.addSubview(imageViewMaisonDuCrique)
        imageView.addSubview(imageViewLesVieuxVergers)
        imageView.addSubview(imageViewTheDraw)
        imageView.addSubview(imageViewRusseauDeFerme)

        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFlakPosition.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewFlakPosition.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewFlakPosition.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewFlakPosition.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewVaulaville.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewVaulaville.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewVaulaville.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewVaulaville.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLaPrairie.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLaPrairie.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLaPrairie.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLaPrairie.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRouteDuHaras.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRouteDuHaras.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRouteDuHaras.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRouteDuHaras.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWesternApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWesternApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWesternApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWesternApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRueDeGambosville.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRueDeGambosville.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRueDeGambosville.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRueDeGambosville.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewHospice.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewHospice.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewHospice.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewHospice.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewSteMereEglise).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewSteMereEglise).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewSteMereEglise).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewSteMereEglise).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCheckpoint.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewCheckpoint.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewCheckpoint.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewCheckpoint.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewArtilleryBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewArtilleryBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewArtilleryBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewArtilleryBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTheCemetery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewTheCemetery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewTheCemetery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewTheCemetery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMaisonDuCrique.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewMaisonDuCrique.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewMaisonDuCrique.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewMaisonDuCrique.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLesVieuxVergers.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewLesVieuxVergers.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewLesVieuxVergers.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewLesVieuxVergers.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewTheDraw).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewTheDraw).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewTheDraw).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewTheDraw).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        (imageViewRusseauDeFerme).leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        (imageViewRusseauDeFerme).trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        (imageViewRusseauDeFerme).topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        (imageViewRusseauDeFerme).bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
}
//MARK:- Sizing
extension SainteMereEgliseBaseLayerViewController {
    
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
extension SainteMereEgliseBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension SainteMereEgliseBaseLayerViewController: UpdateSainteMereEgliseMapDelegate {

    func removeSainteMereEgliseFlakPosition() {
        self.imageViewFlakPosition.isHidden = true
    }
    
    func removeSainteMereEgliseVaulaville() {
        self.imageViewVaulaville.isHidden = true
    }
    
    func removeSainteMereEgliseLaPrairie() {
        self.imageViewLaPrairie.isHidden = true
    }
    
    func removeSainteMereEgliseRouteDuHaras() {
        self.imageViewRouteDuHaras.isHidden = true
    }
    
    func removeSainteMereEgliseWesternApproach() {
        self.imageViewWesternApproach.isHidden = true
    }
    
    func removeSainteMereEgliseRueDeGambosville() {
        self.imageViewRueDeGambosville.isHidden = true
    }
    
    func removeSainteMereEgliseHospice() {
        self.imageViewHospice.isHidden = true
    }
    
    func removeSainteMereEgliseSteMereEglise() {
        self.imageViewSteMereEglise.isHidden = true
    }
    
    func removeSainteMereEgliseCheckpoint() {
        self.imageViewCheckpoint.isHidden = true
    }
    
    func removeSainteMereEgliseArtilleryBattery() {
        self.imageViewArtilleryBattery.isHidden = true
    }
    
    func removeSainteMereEgliseTheCemetery() {
        self.imageViewTheCemetery.isHidden = true
    }
    
    func removeSainteMereEgliseMaisonDuCrique() {
        self.imageViewMaisonDuCrique.isHidden = true
    }
    
    func removeSainteMereEgliseLesVieuxVergers() {
        self.imageViewLesVieuxVergers.isHidden = true
    }
    
    func removeSainteMereEgliseTheDraw() {
        self.imageViewTheDraw.isHidden = true
    }
    
    func removeSainteMereEgliseRusseauDeFerme() {
        self.imageViewRusseauDeFerme.isHidden = true
    }

    func loadSainteMereEgliseFlakPosition() {
        self.imageViewFlakPosition.isHidden = false
        self.imageViewFlakPosition.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseFlakPosition)
    }
    
    func loadSainteMereEgliseVaulaville() {
        self.imageViewVaulaville.isHidden = false
        self.imageViewVaulaville.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseVaulaville)
    }
    
    func loadSainteMereEgliseLaPrairie() {
        self.imageViewLaPrairie.isHidden = false
        self.imageViewLaPrairie.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseLaPrairie)
    }
    
    func loadSainteMereEgliseRouteDuHaras() {
        self.imageViewRouteDuHaras.isHidden = false
        self.imageViewRouteDuHaras.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseRouteDuHaras)
    }
    
    func loadSainteMereEgliseWesternApproach() {
        self.imageViewWesternApproach.isHidden = false
        self.imageViewWesternApproach.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseWesternApproach)
    }
    
    func loadSainteMereEgliseRueDeGambosville() {
        self.imageViewRueDeGambosville.isHidden = false
        self.imageViewRueDeGambosville.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseRueDeGambosville)
    }
    
    func loadSainteMereEgliseHospice() {
        self.imageViewHospice.isHidden = false
        self.imageViewHospice.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseHospice)
    }
    
    func loadSainteMereEgliseSteMereEglise() {
        self.imageViewSteMereEglise.isHidden = false
        self.imageViewSteMereEglise.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseSteMereEglise)
    }
    
    func loadSainteMereEgliseCheckpoint() {
        self.imageViewCheckpoint.isHidden = false
        self.imageViewCheckpoint.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseCheckpoint)
    }
    
    func loadSainteMereEgliseArtilleryBattery() {
        self.imageViewArtilleryBattery.isHidden = false
        self.imageViewArtilleryBattery.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseArtilleryBattery)
    }
    
    func loadSainteMereEgliseTheCemetery() {
        self.imageViewTheCemetery.isHidden = false
        self.imageViewTheCemetery.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseTheCemetary)
    }
    
    func loadSainteMereEgliseMaisonDuCrique() {
        self.imageViewMaisonDuCrique.isHidden = false
        self.imageViewMaisonDuCrique.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseMaisonDuCrique)
    }
    
    func loadSainteMereEgliseLesVieuxVergers() {
        self.imageViewLesVieuxVergers.isHidden = false
        self.imageViewLesVieuxVergers.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseLesVieuxVergers)
    }
    
    func loadSainteMereEgliseTheDraw() {
        self.imageViewTheDraw.isHidden = false
        self.imageViewTheDraw.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseTheDraw)
    }
    func loadSainteMereEgliseRusseauDeFerme() {
        self.imageViewRusseauDeFerme.isHidden = false
        self.imageViewRusseauDeFerme.image = getStrongpoint(strongpoint: .StrongpointSainteMereEgliseRusseauDeFerme)
    }
}
