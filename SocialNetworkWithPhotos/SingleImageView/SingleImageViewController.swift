//
//  SingleImageViewController.swift
//  SocialNetworkWithPhotos
//
//  Created by Дмитрий Перчемиди on 09.03.2025.
//

import UIKit

class SingleImageViewController: UIViewController {
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var scrollView: UIScrollView!
    
    var image: UIImage? {
            didSet {
                guard isViewLoaded else { return }
                imageView.image = image
            }
        }
        
    @IBAction private func didTapBackButton() {
            dismiss(animated: true, completion: nil)
        }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            imageView.image = image
        }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    var image: UIImage? {
//        didSet {
//            guard isViewLoaded else { return }
//            imageView.image = image
//            guard let image = image else { return }
//            rescaleAndCenterImageInScrollView(image: image)
//        }
//    }
//    
//    @IBOutlet private weak var imageView: UIImageView!
//    
//    
//    @IBAction func didTapButton(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }
//    
//    @IBOutlet weak var scrollView: UIScrollView!
//    
//    private func rescaleAndCenterImageInScrollView(image: UIImage) {
//        let minZoomScale = scrollView.minimumZoomScale
//        let maxZoomScale = scrollView.maximumZoomScale
//        view.layoutIfNeeded()
//        let visibleRectSize = scrollView.bounds.size
//        let imageSize = image.size
//        let hScale = visibleRectSize.width / imageSize.width
//        let vScale = visibleRectSize.height / imageSize.height
//        let scale = min(maxZoomScale, max(minZoomScale, min(hScale, vScale)))
//        scrollView.setZoomScale(scale, animated: false)
//        scrollView.layoutIfNeeded()
//        let newContentSize = scrollView.contentSize
//        let x = (newContentSize.width - visibleRectSize.width) / 2
//        let y = (newContentSize.height - visibleRectSize.height) / 2
//        scrollView.setContentOffset(CGPoint(x: x, y: y), animated: false)
//        
//        let visibleRectSize = scrollView.bounds.size
//        let imageSize = image.size
//        let hScale = visibleRectSize.width / imageSize.width
//        let vScale = visibleRectSize.height / imageSize.height
//        let scale = max(hScale, vScale)
//        scrollView.setZoomScale(scale, animated: false)
//                scrollView.layoutIfNeeded()
//                let newContentSize = scrollView.contentSize
//                let x = (newContentSize.width - visibleRectSize.width) / 2
//                let y = (newContentSize.height - visibleRectSize.height) / 2
//                scrollView.setContentOffset(CGPoint(x: x, y: y), animated: false)
//    }
//    
//    
//    override func viewDidLoad() {
//        
//        scrollView.minimumZoomScale = 0.1
//        scrollView.maximumZoomScale = 1.25
//        
//        super.viewDidLoad()
//        guard let image = self.image else { return }
//        imageView.image = image
//        rescaleAndCenterImageInScrollView(image: image)
//
//    }
//}
//
//extension SingleImageViewController: UIScrollViewDelegate {
//    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
//        return imageView
//    }

