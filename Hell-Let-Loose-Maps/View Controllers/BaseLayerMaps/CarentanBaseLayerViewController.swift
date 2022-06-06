//
//  CarentanBaseLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class CarentanBaseLayerViewController: BaseViewController {


    var updateMapDelegate: UpdateMapDelegate!
    
    private let imageView1: UIImageView = {
    let iv1 = UIImageView()
        iv1.contentMode = .scaleAspectFill
        iv1.clipsToBounds = true
        iv1.translatesAutoresizingMaskIntoConstraints = false
        return iv1
    }()
    
    private let imageView2: UIImageView = {
    let iv2 = UIImageView()
        iv2.contentMode = .scaleAspectFill
        iv2.clipsToBounds = true
        iv2.translatesAutoresizingMaskIntoConstraints = false
        return iv2
    }()
    
    private let imageView3: UIImageView = {
    let iv3 = UIImageView()
        iv3.contentMode = .scaleAspectFill
        iv3.clipsToBounds = true
        iv3.translatesAutoresizingMaskIntoConstraints = false
        return iv3
    }()
    
    private let imageView4: UIImageView = {
    let iv4 = UIImageView()
        iv4.contentMode = .scaleAspectFill
        iv4.clipsToBounds = true
        iv4.translatesAutoresizingMaskIntoConstraints = false
        return iv4
    }()
    
    private  let imageView5: UIImageView = {
    let iv5 = UIImageView()
        iv5.contentMode = .scaleAspectFill
        iv5.clipsToBounds = true
        iv5.translatesAutoresizingMaskIntoConstraints = false
        return iv5
    }()
    
    private let imageView6: UIImageView = {
    let iv6 = UIImageView()
        iv6.contentMode = .scaleAspectFill
        iv6.clipsToBounds = true
        iv6.translatesAutoresizingMaskIntoConstraints = false
        return iv6
    }()
    
    private let imageView7: UIImageView = {
    let iv7 = UIImageView()
        iv7.contentMode = .scaleAspectFill
        iv7.clipsToBounds = true
        iv7.translatesAutoresizingMaskIntoConstraints = false
        return iv7
    }()
    
    private let imageView8: UIImageView = {
    let iv8 = UIImageView()
        iv8.contentMode = .scaleAspectFill
        iv8.clipsToBounds = true
        iv8.translatesAutoresizingMaskIntoConstraints = false
        return iv8
    }()
    private let imageView9: UIImageView = {
    let iv9 = UIImageView()
        iv9.contentMode = .scaleAspectFill
        iv9.clipsToBounds = true
        iv9.translatesAutoresizingMaskIntoConstraints = false
        return iv9
    }()
    
    private let imageView10: UIImageView = {
    let iv10 = UIImageView()
        iv10.contentMode = .scaleAspectFill
        iv10.clipsToBounds = true
        iv10.translatesAutoresizingMaskIntoConstraints = false
        return iv10
    }()
    
    private let imageView11: UIImageView = {
    let iv11 = UIImageView()
        iv11.contentMode = .scaleAspectFill
        iv11.clipsToBounds = true
        iv11.translatesAutoresizingMaskIntoConstraints = false
        return iv11
    }()
    
    private let imageView12: UIImageView = {
    let iv12 = UIImageView()
        iv12.contentMode = .scaleAspectFill
        iv12.clipsToBounds = true
        iv12.translatesAutoresizingMaskIntoConstraints = false
        return iv12
    }()
    
    private let imageView13: UIImageView = {
    let iv13 = UIImageView()
        iv13.contentMode = .scaleAspectFill
        iv13.clipsToBounds = true
        iv13.translatesAutoresizingMaskIntoConstraints = false
        return iv13
    }()
    
    private let imageView14: UIImageView = {
    let iv14 = UIImageView()
        iv14.contentMode = .scaleAspectFill
        iv14.clipsToBounds = true
        iv14.translatesAutoresizingMaskIntoConstraints = false
        return iv14
    }()
    
    private let imageView15: UIImageView = {
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
         let storyboard = UIStoryboard.init(name: "SelectLayer", bundle: nil)
           if let controller = storyboard.instantiateViewController(identifier: "SelectLayerViewController") as? SelectLayerViewController {
               controller.updateMapDelegate = self
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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanBaseLayer)
        scrollView.delegate = self
        createImageViewLayerSubViews()
        doubleTapGesture()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
    
//MARK: - Create ImageView SubViews
    
    // Create imageViews and add them to the View Heierarchy
    func createImageViewLayerSubViews() {
        //Add imageViews to the View Heierarchy
        imageView0.addSubview(imageView1)
        imageView0.addSubview(imageView2)
        imageView0.addSubview(imageView3)
        imageView0.addSubview(imageView4)
        imageView0.addSubview(imageView5)
        imageView0.addSubview(imageView6)
        imageView0.addSubview(imageView7)
        imageView0.addSubview(imageView8)
        imageView0.addSubview(imageView9)
        imageView0.addSubview(imageView10)
        imageView0.addSubview(imageView11)
        imageView0.addSubview(imageView12)
        imageView0.addSubview(imageView13)
        imageView0.addSubview(imageView14)
        imageView0.addSubview(imageView15)
        
        imageView1.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView1.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView1.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView1.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView2.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView2.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView2.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView2.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView3.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView3.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView3.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView3.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView4.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView4.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView4.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView4.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView5.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView5.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView5.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView5.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView6.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView6.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView6.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView6.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView7.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView7.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView7.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView7.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView8.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView8.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView8.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView8.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView9.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView9.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView9.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView9.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView10.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView10.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView10.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView10.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView11.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView11.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView11.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView11.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView12.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView12.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView12.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView12.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView13.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView13.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView13.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView13.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true

        imageView14.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView14.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView14.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView14.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
        
        imageView15.leadingAnchor.constraint(equalTo: imageView0.leadingAnchor).isActive = true
        imageView15.trailingAnchor.constraint(equalTo: imageView0.trailingAnchor).isActive = true
        imageView15.topAnchor.constraint(equalTo: imageView0.topAnchor).isActive = true
        imageView15.bottomAnchor.constraint(equalTo: imageView0.bottomAnchor).isActive = true
    }
    
}

//MARK: - Sizing

extension CarentanBaseLayerViewController {
    
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
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
      return imageView0
  }
    
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension CarentanBaseLayerViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}


extension CarentanBaseLayerViewController: UpdateMapDelegate {
    func removeStrongpoint() {
        self.imageView1.removeFromSuperview()
    }
    
    func loadStrongpoint1() {
        self.imageView1.image = getStrongpoint(strongpoint: .StrongpointCarentanBlactot)
    }
    
    func loadStrongpoint2() {
        self.imageView2.image = getStrongpoint(strongpoint: .StrongpointCarentan502ndStart)

    }
    
    func loadStrongpoint3() {
        self.imageView3.image = getStrongpoint(strongpoint: .StrongpointCarentanFarmRuins)

    }
    
    func loadStrongpoint4() {
        self.imageView4.image = getStrongpoint(strongpoint: .StrongpointCarentanPumpingStation)

    }
    
    func loadStrongpoint5() {
        self.imageView5.image = getStrongpoint(strongpoint: .StrongpointCarentanRuins)

    }
    
    func loadStrongpoint6() {
        self.imageView6.image = getStrongpoint(strongpoint: .StrongpointCarentanDerailedTrain)

    }
    
    func loadStrongpoint7() {
        self.imageView7.image = getStrongpoint(strongpoint: .StrongpointCarentanCanalCrossing)

    }
    
    func loadStrongpoint8() {
        self.imageView8.image = getStrongpoint(strongpoint: .StrongpointCarentanTownCenter)

    }
    
    func loadStrongpoint9() {
        self.imageView9.image = getStrongpoint(strongpoint: .StrongpointCarentanTrainStation)

    }
    
    func loadStrongpoint10() {
        self.imageView10.image = getStrongpoint(strongpoint: .StrongpointCarentanCustoms)
    }
    
    func loadStrongpoint11() {
        self.imageView11.image = getStrongpoint(strongpoint: .StrongpointCarentanRailCauseway)

    }
    
    func loadStrongpoint12() {
        self.imageView12.image = getStrongpoint(strongpoint: .StrongpointCarentanMountHalais)

    }
    
    func loadStrongpoint13() {
        self.imageView13.image = getStrongpoint(strongpoint: .StrongpointCarentanCanalLocks)

    }
    
    func loadStrongpoint14() {
        self.imageView14.image = getStrongpoint(strongpoint: .StrongpointCarentanRailCauseway)

    }
    func loadStrongpoint15() {
        self.imageView15.image = getStrongpoint(strongpoint: .StrongpointCarentanLaMaisonDesOrmes)

    }
    
    func loadStrongpointsLayer() {
        self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanStrongpoints)
    }
    
    func loadTACLayer() {
        DispatchQueue.main.async {
            self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanTAC)
            self.loadStrongpoint1()
            self.loadStrongpoint2()
            self.loadStrongpoint3()
            self.loadStrongpoint4()
            self.loadStrongpoint5()
            self.loadStrongpoint6()
            self.loadStrongpoint7()
            self.loadStrongpoint8()
            self.loadStrongpoint9()
            self.loadStrongpoint10()
            self.loadStrongpoint11()
            self.loadStrongpoint12()
            self.loadStrongpoint13()
            self.loadStrongpoint14()
            self.loadStrongpoint15()
        }
        
    }
    
    func loadBaseLayer() {
        self.imageView0.image = getMap(mapName: .Carentan, layerType: .CarentanBaseLayer)
    }
}
