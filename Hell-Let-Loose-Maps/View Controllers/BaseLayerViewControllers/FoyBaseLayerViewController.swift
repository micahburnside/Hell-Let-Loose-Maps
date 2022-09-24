//
//  FoyBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class FoyBaseLayerViewController: BaseViewController {
    
    var updateFoyMapDelegate: UpdateFoyMapDelegate!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var layerButton: UIBarButtonItem!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    private let imageViewRoadToRecogne: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageViewCobruApproach: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewRoadToNoville: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewCobruFactory: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewFoy: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewFlakBattery: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewWestBend: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewSouthernEdge: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageViewDugoutBarn: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageViewN30Highway: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewBizoryFoyRoad: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewEasternOurthe: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewRoadToBastogne: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewBoisJacques: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewForestOutskirts: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
//MARK: - Create ImageView SubViews

    func createImageViewLayerSubViews() {
        
        ///Add imageViews to the View Heierarchy
        imageView.addSubview(imageViewRoadToRecogne)
        imageView.addSubview(imageViewCobruApproach)
        imageView.addSubview(imageViewRoadToNoville)
        imageView.addSubview(imageViewCobruFactory)
        imageView.addSubview(imageViewFoy)
        imageView.addSubview(imageViewFlakBattery)
        imageView.addSubview(imageViewWestBend)
        imageView.addSubview(imageViewSouthernEdge)
        imageView.addSubview(imageViewDugoutBarn)
        imageView.addSubview(imageViewN30Highway)
        imageView.addSubview(imageViewBizoryFoyRoad)
        imageView.addSubview(imageViewEasternOurthe)
        imageView.addSubview(imageViewRoadToBastogne)
        imageView.addSubview(imageViewBoisJacques)
        imageView.addSubview(imageViewForestOutskirts)
        
        ///sets imageView1 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoadToRecogne.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRoadToRecogne.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRoadToRecogne.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRoadToRecogne.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCobruApproach.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewCobruApproach.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewCobruApproach.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewCobruApproach.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoadToNoville.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRoadToNoville.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRoadToNoville.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRoadToNoville.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCobruFactory.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewCobruFactory.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewCobruFactory.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewCobruFactory.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFoy.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewFoy.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewFoy.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewFoy.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFlakBattery.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewFlakBattery.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewFlakBattery.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewFlakBattery.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewWestBend.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewWestBend.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewWestBend.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewWestBend.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewSouthernEdge.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewSouthernEdge.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewSouthernEdge.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewSouthernEdge.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDugoutBarn.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewDugoutBarn.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewDugoutBarn.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewDugoutBarn.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewN30Highway.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewN30Highway.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewN30Highway.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewN30Highway.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBizoryFoyRoad.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBizoryFoyRoad.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBizoryFoyRoad.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBizoryFoyRoad.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewEasternOurthe.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewEasternOurthe.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewEasternOurthe.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewEasternOurthe.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRoadToBastogne.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewRoadToBastogne.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewRoadToBastogne.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewRoadToBastogne.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewBoisJacques.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewBoisJacques.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewBoisJacques.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewBoisJacques.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewForestOutskirts.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        imageViewForestOutskirts.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        imageViewForestOutskirts.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        imageViewForestOutskirts.bottomAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.imageView.image = getMap(mapName: .Foy, layerType: .FoyTAC)
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
        showFoyStrongpoints()
        hideFoyStrongpoints()
    }
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard.init(name: "SelectFoyLayers", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "SelectFoyLayersViewController") as? SelectFoyLayersViewController {
            controller.modalPresentationStyle = .popover
            controller.updateFoyMapDelegate = self
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
    
    func updateMinZoomScaleForSize(_ size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let minScale = min(widthScale, heightScale)
          
        scrollView.minimumZoomScale = minScale
        scrollView.zoomScale = minScale
    }
    
    @IBAction func shareFoyMapLayer(_ sender: UIBarButtonItem) {
        guard let screenshot = self.snapshotFoyMap() else { return }
        
        shareFoyMapImage(screenshot: screenshot)
        func shareFoyMapImage(screenshot: UIImage) {
            // save or share
            DispatchQueue.main.async {
                let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
                shareSheet.popoverPresentationController?.barButtonItem = sender
                self.present(shareSheet, animated: true, completion: nil)
            }
        }
    }
    
    func snapshotFoyMap() -> UIImage? {
        UIGraphicsBeginImageContext(imageView.intrinsicContentSize)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
        
    }
    
    func showFoyStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTORECOGNE) {
            self.loadFoyRoadToRecogne()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_COBRUAPPROACH) {
            self.loadFoyCobruApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTONOVILLE) {
            self.loadFoyRoadToNoville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_COBRU_FACTORY) {
            self.loadFoyCobruFactory()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FOY) {
            self.loadFoyFoy()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FLAKBATTERY) {
            self.loadFoyFlakBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_WESTBEND) {
            self.loadFoyWestBend()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_SOUTHERNEDGE) {
            self.loadFoySouthernEdge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_DUGOUTBARN) {
            self.loadFoyDugoutBarn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_N30HIGHWAY) {
            self.loadFoyN30Highway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_BIZORYFOYROAD) {
            self.loadFoyBizoryFoyRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_EASTERN_OURTHE) {
            self.loadFoyEasternOurthe()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTOBASTOGNE) {
            self.loadFoyRoadToBastogne()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_BOISJACUES) {
            self.loadFoyBoisJacques()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FORESTOUTSKIRTS) {
            self.loadFoyForestOutskirts()
        }
    }
    
    func hideFoyStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTORECOGNE) == false {
            self.removeFoyRoadToRecogne()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_COBRUAPPROACH) == false {
            self.removeFoyCobruApproach()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTONOVILLE) == false {
            self.removeFoyRoadToNoville()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_COBRU_FACTORY) == false {
            self.removeFoyCobruFactory()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FOY) == false {
            self.removeFoyFoy()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FLAKBATTERY) == false {
            self.removeFoyFlakBattery()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_WESTBEND) == false {
            self.removeFoyWestBend()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_SOUTHERNEDGE) == false {
            self.removeFoySouthernEdge()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_DUGOUTBARN) == false {
            self.removeFoyDugoutBarn()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_N30HIGHWAY) == false {
            self.removeFoyN30Highway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_BIZORYFOYROAD) == false {
            self.removeFoyBizoryFoyRoad()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_EASTERN_OURTHE) == false {
            self.removeFoyEasternOurthe()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTOBASTOGNE) == false {
            self.removeFoyRoadToBastogne()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_BOISJACUES) == false {
            self.removeFoyBoisJacques()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FORESTOUTSKIRTS) == false {
            self.removeFoyForestOutskirts()
        }
    }
    
}
//MARK:- Sizing
extension FoyBaseLayerViewController {
    
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
extension FoyBaseLayerViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension FoyBaseLayerViewController: UpdateFoyMapDelegate {
    func loadFoyRoadToRecogne() {
        self.imageViewRoadToRecogne.isHidden = false
        self.imageViewRoadToRecogne.image = getStrongpoint(strongpoint: .StrongpointFoyRoadToRecogne)
    }
    
    func loadFoyCobruApproach() {
        self.imageViewCobruApproach.isHidden = false
        self.imageViewCobruApproach.image = getStrongpoint(strongpoint: .StrongpointFoyCobruApproach)
    }
    
    func loadFoyRoadToNoville() {
        self.imageViewRoadToNoville.isHidden = false
        self.imageViewRoadToNoville.image = getStrongpoint(strongpoint: .StrongpointFoyRoadToNoville)
    }
    
    func loadFoyCobruFactory() {
        self.imageViewCobruFactory.isHidden = false
        self.imageViewCobruFactory.image = getStrongpoint(strongpoint: .StrongpointFoyCobruFactory)
    }
    
    func loadFoyFoy() {
        self.imageViewFoy.isHidden = false
        self.imageViewFoy.image = getStrongpoint(strongpoint: .StrongpointFoyFoy)
    }
    
    func loadFoyFlakBattery() {
        self.imageViewFlakBattery.isHidden = false
        self.imageViewFlakBattery.image = getStrongpoint(strongpoint: .StrongpointFoyFlakBattery)
    }
    
    func loadFoyWestBend() {
        self.imageViewWestBend.isHidden = false
        self.imageViewWestBend.image = getStrongpoint(strongpoint: .StrongpointFoyWestBend)
    }
    
    func loadFoySouthernEdge() {
        self.imageViewSouthernEdge.isHidden = false
        self.imageViewSouthernEdge.image = getStrongpoint(strongpoint: .StrongpointFoySouthernEdge)
    }
    
    func loadFoyDugoutBarn() {
        self.imageViewDugoutBarn.isHidden = false
        self.imageViewDugoutBarn.image = getStrongpoint(strongpoint: .StrongpointFoyDugoutBarn)
    }
    
    func loadFoyN30Highway() {
        self.imageViewN30Highway.isHidden = false
        self.imageViewN30Highway.image = getStrongpoint(strongpoint: .StrongpointFoyN30Highway)
    }
    
    func loadFoyBizoryFoyRoad() {
        self.imageViewBizoryFoyRoad.isHidden = false
        self.imageViewBizoryFoyRoad.image = getStrongpoint(strongpoint: .StrongpointFoyBizoryFoyRoad)
    }
    
    func loadFoyEasternOurthe() {
        self.imageViewEasternOurthe.isHidden = false
        self.imageViewEasternOurthe.image = getStrongpoint(strongpoint: .StrongpointFoyEasternOurthe)
    }
    
    func loadFoyRoadToBastogne() {
        self.imageViewRoadToBastogne.isHidden = false
        self.imageViewRoadToBastogne.image = getStrongpoint(strongpoint: .StrongpointFoyRoadToBastogne)
    }
    
    func loadFoyBoisJacques() {
        self.imageViewBoisJacques.isHidden = false
        self.imageViewBoisJacques.image = getStrongpoint(strongpoint: .StrongpointFoyBoisJoacues)
    }
    
    func loadFoyForestOutskirts() {
        self.imageViewForestOutskirts.isHidden = false
        self.imageViewForestOutskirts.image = getStrongpoint(strongpoint: .StrongpointFoyForestOutskirt)
    }
    
    func removeFoyRoadToRecogne() {
        self.imageViewRoadToRecogne.isHidden = true
    }
    
    func removeFoyCobruApproach() {
        self.imageViewCobruApproach.isHidden = true
    }
    
    func removeFoyRoadToNoville() {
        self.imageViewRoadToNoville.isHidden = true

    }
    
    func removeFoyCobruFactory() {
        self.imageViewCobruFactory.isHidden = true
    }
    
    func removeFoyFoy() {
        self.imageViewFoy.isHidden = true
    }
    
    func removeFoyFlakBattery() {
        self.imageViewFlakBattery.isHidden = true
    }
    
    func removeFoyWestBend() {
        self.imageViewWestBend.isHidden = true
    }
    
    func removeFoySouthernEdge() {
        self.imageViewSouthernEdge.isHidden = true
    }
    
    func removeFoyDugoutBarn() {
        self.imageViewDugoutBarn.isHidden = true
    }
    
    func removeFoyN30Highway() {
        self.imageViewN30Highway.isHidden = true
    }
    
    func removeFoyBizoryFoyRoad() {
        self.imageViewBizoryFoyRoad.isHidden = true
    }
    
    func removeFoyEasternOurthe() {
        self.imageViewEasternOurthe.isHidden = true
    }
    
    func removeFoyRoadToBastogne() {
        self.imageViewRoadToBastogne.isHidden = true
    }
    
    func removeFoyBoisJacques() {
        self.imageViewBoisJacques.isHidden = true
    }
    
    func removeFoyForestOutskirts() {
        self.imageViewForestOutskirts.isHidden = true
    }
    
    func loadStrongpointsLayer() {
        self.imageView.image = getMap(mapName: .Carentan, layerType: .FoyStrongpoints)
    }
    
    func loadTACLayer() {
        self.imageView.image = getMap(mapName: .Carentan, layerType: .FoyTAC)
    }
    
    func loadBaseLayer() {
        self.imageView.image = getMap(mapName: .Carentan, layerType: .FoyBaseLayer)
    }
    
}
extension FoyBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
