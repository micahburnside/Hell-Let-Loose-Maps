//
//  CarentanBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit
import CoreData

//CarentanBaseLayerViewController presents
class CarentanBaseLayerViewController: BaseViewController {

//    var carentenMapUserSettings = [CarentanMapUserSettings]()
    
//    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var updateCarentanMapDelegate: UpdateCarentanMapDelegate!
    
    private let imageViewBlactot: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageView502ndStart: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageViewFarmRuins: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageViewPumpingStation: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageViewRuins: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageViewDerailedTrain: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageViewCanalCrossing: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageViewTownCenter: UIImageView = {
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
    
    private let imageViewCustoms: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageViewRailCrossing: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageViewMountHalais: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageViewCanalLocks: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageViewRailCauseway: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageViewLaMasionDesOrmes: UIImageView = {
    let iv15 = UIImageView()
        iv15.contentMode = .scaleAspectFill
        iv15.clipsToBounds = true
        iv15.translatesAutoresizingMaskIntoConstraints = false
        return iv15
    }()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var layerButton: UIBarButtonItem!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    @IBAction func layerButtonPressed(_ sender: UIBarButtonItem) {
         let storyboard = UIStoryboard.init(name: "SelectCarentanLayers", bundle: nil)
           if let controller = storyboard.instantiateViewController(identifier: "SelectCarentanLayersViewController") as? SelectCarentanLayersViewController {
               controller.updateCarentanMapDelegate = self
               if let sheet = controller.sheetPresentationController {
                   sheet.detents = [ .medium() ]
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
            if scrollView.zoomScale == 1 {
                scrollView.setZoomScale(2, animated: true)
            } else {
                scrollView.setZoomScale(1, animated: true)
            }
        }
    
    private func zoomRectangle(scale: CGFloat, center: CGPoint) -> CGRect {
            var zoomRect = CGRect.zero
            zoomRect.size.height = imageView0.frame.size.height / scale
            zoomRect.size.width  = imageView0.frame.size.width  / scale
            zoomRect.origin.x = center.x - (center.x * scrollView.zoomScale)
            zoomRect.origin.y = center.y - (center.y * scrollView.zoomScale)
            
            return zoomRect
        }

    private func zoomOutRectangle(scale: CGFloat, center: CGPoint) -> CGRect {
            var zoomOutRect = CGRect.zero
        zoomOutRect.size.height = scrollView.frame.size.height
        zoomOutRect.size.width  = scrollView.frame.size.width
//            zoomRect.origin.x = center.x - (center.x * scrollView.zoomScale)
//            zoomRect.origin.y = center.y - (center.y * scrollView.zoomScale)
            
            return zoomOutRect
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanBaseLayer)
        scrollView.delegate = self
        createImageViewLayerSubViews()
        doubleTapGesture()

      
//        let request : NSFetchRequest<CarentanMapUserSettings> = CarentanMapUserSettings.fetchRequest()
//        let predicate = NSPredicate(format: "CarentanMapUserSettings")
//        loadItems(with: request, predicate: predicate)
//        print("\(request)")
//        print("\(loadItems(with: request, predicate: predicate))")


    }
    

//    func loadItems(with request: NSFetchRequest<CarentanMapUserSettings> = CarentanMapUserSettings.fetchRequest(), predicate: NSPredicate? = nil) {
//        
//        let carentanPredicate = NSPredicate(format: "CarentanMapUserSettings")
//            request.predicate = carentanPredicate
//        do {
//        try context.fetch(request)
//        } catch {
//            print("Error fetching data from context \(error)")
//        }
        
//        tableView.reloadData()
        
//    }
    
    
    func documentDirectoryPath() -> URL? {
        let path = FileManager.default.urls(for: .documentDirectory,
                                            in: .userDomainMask)
        return path.first
    }
    
    func savePng(_ image: UIImage) {
        if let pngData = image.pngData(),
            let path = documentDirectoryPath()?.appendingPathComponent("examplePng.png") {
            try? pngData.write(to: path)
        }
    }
    
    

    
    override func viewWillLayoutSubviews() {
        
      super.viewWillLayoutSubviews()
        
        updateMinZoomScaleForSize(view.bounds.size)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        showStrongpoints()
        
        hideStrongpoints()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func shareCarentanMapLayer(_ sender: UIBarButtonItem) {
        
        guard let screenshot = self.snapshotCarentanMap() else { return }
        
        shareCarentanMapImage(screenshot: screenshot)
        
    }
    
    func shareCarentanMapImage(screenshot: UIImage) {
        // save or share
        
        DispatchQueue.main.async {
            
            let shareSheet = UIActivityViewController(activityItems: [screenshot], applicationActivities: nil)
             
             self.present(shareSheet, animated: true, completion: nil)
            
        }

    }
    
    func snapshotCarentanMap() -> UIImage?
    {
        UIGraphicsBeginImageContext(imageView0.intrinsicContentSize)
        let savedContentOffset = scrollView.contentOffset
        let savedFrame = scrollView.frame
        scrollView.contentOffset = CGPoint.zero
        imageView0.frame = CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height)
        imageView0.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        scrollView.contentOffset = savedContentOffset
        imageView0.frame = savedFrame
        UIGraphicsEndImageContext()
        return image
    }
           

    
    func showStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_BLACTOT) {
            self.loadCarentanBlactot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_502NDSTART) {
            self.loadCarentan502ndStart()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FARMRUINS) {
            self.loadCarentanFarmRuins()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PUMPINGSTATION) {
            self.loadCarentanPumpingStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RUINS) {
            self.loadCarentanRuins()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DERAILEDTRAIN) {
            self.loadCarentanDerailedTrain()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CANALCROSSING) {
            self.loadCarentanCanalCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_TOWNCENTER) {
            self.loadCarentanTownCenter()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_TRAINSTATION) {
            self.loadCarentanTrainStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CUSTOMS) {
            self.loadCarentanCustoms()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RAILCROSSING) {
            self.loadCarentanRailCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_MOUNTHALAIS) {
            self.loadCarentanMountHalais()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CANALLOCKS) {
            self.loadCarentanCanalLocks()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RAILCAUSEWAY) {
            self.loadCarentanRailCauseway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_LAMAISONDESORMES) {
            self.loadCarentanLaMasionDesOrmes()
        }
    }
    
    func hideStrongpoints() {
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_BLACTOT) == false {
            self.removeCarentanBlactot()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_502NDSTART) == false {
            self.removeCarentan502ndStart()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FARMRUINS) == false {
            self.removeCarentanFarmRuins()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PUMPINGSTATION) == false {
            self.removeCarentanPumpingStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RUINS) == false {
            self.removeCarentanRuins()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DERAILEDTRAIN) == false {
            self.removeCarentanDerailedTrain()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CANALCROSSING) == false {
            self.removeCarentanCanalCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_TOWNCENTER) == false {
            self.removeCarentanTownCenter()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_TRAINSTATION) == false {
            self.removeCarentanTrainStation()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CUSTOMS) == false {
            self.removeCarentanCustoms()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RAILCROSSING) == false {
            self.removeCarentanRailCrossing()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_MOUNTHALAIS) == false {
            self.removeCarentanMountHalais()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CANALLOCKS) == false {
            self.removeCarentanCanalLocks()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RAILCAUSEWAY) == false {
            self.removeCarentanRailCauseway()
        }
        if StoredData.shared.getToggleState(switchKey: .STRONGPOINT_LAMAISONDESORMES) == false {
            self.removeCarentanLaMasionDesOrmes()
        }
    }
//MARK: - Create ImageView SubViews
    
    // Create imageViews and add them to the View Heierarchy
    func createImageViewLayerSubViews() {
        
        ///Adds each strongpoint .png image layer as a subview to imageView0
        imageView0.addSubview(imageViewBlactot)
        imageView0.addSubview(imageView502ndStart)
        imageView0.addSubview(imageViewFarmRuins)
        imageView0.addSubview(imageViewPumpingStation)
        imageView0.addSubview(imageViewRuins)
        imageView0.addSubview(imageViewDerailedTrain)
        imageView0.addSubview(imageViewCanalCrossing)
        imageView0.addSubview(imageViewTownCenter)
        imageView0.addSubview(imageViewTrainStation)
        imageView0.addSubview(imageViewCustoms)
        imageView0.addSubview(imageViewRailCrossing)
        imageView0.addSubview(imageViewMountHalais)
        imageView0.addSubview(imageViewCanalLocks)
        imageView0.addSubview(imageViewRailCauseway)
        imageView0.addSubview(imageViewLaMasionDesOrmes)
        
        ///pins imageViewBlactot subView constraints to  imageView0 which is constrained to the ScrollView
        imageViewBlactot.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewBlactot.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewBlactot.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewBlactot.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView2 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageView502ndStart.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView502ndStart.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView502ndStart.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView502ndStart.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView3 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewFarmRuins.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewFarmRuins.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewFarmRuins.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewFarmRuins.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView4 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewPumpingStation.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewPumpingStation.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewPumpingStation.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewPumpingStation.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView5 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRuins.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewRuins.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewRuins.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewRuins.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView6 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewDerailedTrain.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewDerailedTrain.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewDerailedTrain.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewDerailedTrain.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView7 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCanalCrossing.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewCanalCrossing.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewCanalCrossing.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewCanalCrossing.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        ///sets imageView8 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTownCenter.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewTownCenter.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewTownCenter.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewTownCenter.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView9 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewTrainStation.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewTrainStation.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewTrainStation.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewTrainStation.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        ///sets imageView10 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCustoms.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewCustoms.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewCustoms.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewCustoms.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        ///sets imageView11 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRailCrossing.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewRailCrossing.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewRailCrossing.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewRailCrossing.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView12 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewMountHalais.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewMountHalais.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewMountHalais.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewMountHalais.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView13 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewCanalLocks.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewCanalLocks.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewCanalLocks.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewCanalLocks.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        ///sets imageView14 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewRailCauseway.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewRailCauseway.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewRailCauseway.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewRailCauseway.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        ///sets imageView15 subView constraints to be equal to it's parent view imageView0 that is inside a scrollView
        imageViewLaMasionDesOrmes.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageViewLaMasionDesOrmes.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageViewLaMasionDesOrmes.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageViewLaMasionDesOrmes.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
    }
    
}

//MARK: - Sizing

extension CarentanBaseLayerViewController {
    ///sets zoom scaling min / max
    func updateMinZoomScaleForSize(_ size: CGSize) {
        scrollView.minimumZoomScale = 0.2
        scrollView.maximumZoomScale = 5.0
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
extension CarentanBaseLayerViewController: UIScrollViewDelegate {
    ///Sets imageView0 as the parent imageView
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
      return imageView0
  }
    
  ///Updates constraints as view zooms in and out
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension CarentanBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}

extension CarentanBaseLayerViewController: UpdateCarentanMapDelegate {
    func removeStrongpoint() {
    print("This doesn't need to do anything yet")
    }
    func removeCarentanBlactot() {
        self.imageViewBlactot.isHidden = true
    }
    
    func removeCarentan502ndStart() {
        self.imageView502ndStart.isHidden = true
    }
    
    func removeCarentanFarmRuins() {
        self.imageViewFarmRuins.isHidden = true
    }
    
    func removeCarentanPumpingStation() {
        self.imageViewPumpingStation.isHidden = true
    }
    
    func removeCarentanRuins() {
        self.imageViewRuins.isHidden = true

    }
    
    func removeCarentanDerailedTrain() {
        self.imageViewDerailedTrain.isHidden = true
    }
    
    func removeCarentanCanalCrossing() {
        self.imageViewCanalCrossing.isHidden = true
    }
    
    func removeCarentanTownCenter() {
        self.imageViewTownCenter.isHidden = true
    }
    
    func removeCarentanTrainStation() {
        self.imageViewTrainStation.isHidden = true
    }
    
    func removeCarentanCustoms() {
        self.imageViewCustoms.isHidden = true
    }
    
    func removeCarentanRailCrossing() {
        self.imageViewRailCrossing.isHidden = true

    }
    
    func removeCarentanMountHalais() {
        self.imageViewMountHalais.isHidden = true
    }
    
    func removeCarentanCanalLocks() {
        self.imageViewCanalLocks.isHidden = true
    }
    
    func removeCarentanRailCauseway() {
        self.imageViewRailCauseway.isHidden = true
    }
    
    func removeCarentanLaMasionDesOrmes() {
        self.imageViewLaMasionDesOrmes.isHidden = true
    }
    
    func loadCarentanBlactot() {
        self.imageViewBlactot.isHidden = false
        self.imageViewBlactot.image = getStrongpoint(strongpoint: .StrongpointCarentanBlactot)
    }
    
    func loadCarentan502ndStart() {
        self.imageView502ndStart.isHidden = false
        self.imageView502ndStart.image = getStrongpoint(strongpoint: .StrongpointCarentan502ndStart)
    }

    func loadCarentanFarmRuins() {
        self.imageViewFarmRuins.isHidden = false
        self.imageViewFarmRuins.image = getStrongpoint(strongpoint: .StrongpointCarentanFarmRuins)
    }
    
    func loadCarentanPumpingStation() {
        self.imageViewPumpingStation.isHidden = false
        self.imageViewPumpingStation.image = getStrongpoint(strongpoint: .StrongpointCarentanPumpingStation)
    }
    
    func loadCarentanRuins() {
        self.imageViewRuins.isHidden = false
        self.imageViewRuins.image = getStrongpoint(strongpoint: .StrongpointCarentanRuins)
    }
    
    func loadCarentanDerailedTrain() {
        self.imageViewDerailedTrain.isHidden = false
        self.imageViewDerailedTrain.image = getStrongpoint(strongpoint: .StrongpointCarentanDerailedTrain)
    }
    
    func loadCarentanCanalCrossing() {
        self.imageViewCanalCrossing.isHidden = false
        self.imageViewCanalCrossing.image = getStrongpoint(strongpoint: .StrongpointCarentanCanalCrossing)
    }
    
    func loadCarentanTownCenter() {
        self.imageViewTownCenter.isHidden = false
        self.imageViewTownCenter.image = getStrongpoint(strongpoint: .StrongpointCarentanTownCenter)
    }
    
    func loadCarentanTrainStation() {
        self.imageViewTrainStation.isHidden = false
        self.imageViewTrainStation.image = getStrongpoint(strongpoint: .StrongpointCarentanTrainStation)
    }
    
    func loadCarentanCustoms() {
        self.imageViewCustoms.isHidden = false
        self.imageViewCustoms.image = getStrongpoint(strongpoint: .StrongpointCarentanCustoms)
    }
    
    func loadCarentanRailCrossing() {
        self.imageViewRailCrossing.isHidden = false
        self.imageViewRailCrossing.image = getStrongpoint(strongpoint: .StrongpointCarentanRailCrossing)
    }
    
    func loadCarentanMountHalais() {
        self.imageViewMountHalais.isHidden = false
        self.imageViewMountHalais.image = getStrongpoint(strongpoint: .StrongpointCarentanMountHalais)
    }
    
    func loadCarentanCanalLocks() {
        self.imageViewCanalLocks.isHidden = false
        self.imageViewCanalLocks.image = getStrongpoint(strongpoint: .StrongpointCarentanCanalLocks)
    }
    
    func loadCarentanRailCauseway() {
        self.imageViewRailCauseway.isHidden = false
        self.imageViewRailCauseway.image = getStrongpoint(strongpoint: .StrongpointCarentanRailCauseway)
    }
    
    func loadCarentanLaMasionDesOrmes() {
        self.imageViewLaMasionDesOrmes.isHidden = false
        self.imageViewLaMasionDesOrmes.image = getStrongpoint(strongpoint: .StrongpointCarentanLaMaisonDesOrmes)
    }
    
    func loadStrongpointsLayer() {
        self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanStrongpoints)
    }
    
    func loadTACLayer() {
        self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanTAC)
    }
    
    func loadBaseLayer() {
        self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanBaseLayer)
    }
    
}
