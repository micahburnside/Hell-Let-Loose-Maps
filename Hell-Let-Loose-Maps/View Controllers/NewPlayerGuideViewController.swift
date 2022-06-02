//
//  NewPlayerGuideViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/30/22.
//

import UIKit
import PDFKit

class NewPlayerGuideViewController: BaseViewController, PDFViewDelegate {


    var updateMapDelegate: UpdateMapDelegate!

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var layerButton: UIBarButtonItem!
    @IBOutlet weak var imageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewTrailingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Add PDFView to view controller.
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)

        // Fit content in PDFView.
        pdfView.autoScales = true

        // Load Sample.pdf file from app bundle.
        if let fileURL = Bundle.main.url(forResource: "NewPlayerGuidePDF", withExtension: "pdf") {
            pdfView.document = PDFDocument(url: fileURL)
        }
        
        
        self.imageView.contentMode = .scaleAspectFit
        scrollView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Create PTDocumentViewController.
//        let documentController = PDF

        // Load Sample.pdf file from app bundle.
        let fileURL = Bundle.main.url(forResource: "Sample", withExtension: "pdf")

//        documentController.openDocument(with: fileURL!)


        // Show PTDocumentViewController in UINavigationController.
//        let navigationController = UINavigationController(rootViewController: documentController)
//        self.present(navigationController, animated: true, completion: nil)
    }
    
    override func viewWillLayoutSubviews() {
      super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(view.bounds.size)
    }
    

}

//MARK: - Sizing

extension NewPlayerGuideViewController {
    
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
extension NewPlayerGuideViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    updateConstraintsForSize(view.bounds.size)
  }
}

extension NewPlayerGuideViewController: UIAdaptivePresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
    return .none
    }
}
