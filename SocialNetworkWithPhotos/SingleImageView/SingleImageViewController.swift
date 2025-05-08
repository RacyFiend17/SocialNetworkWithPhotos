import UIKit

class SingleImageViewController: UIViewController {
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var scrollView: UIScrollView!
    
    var image: UIImage? {
            didSet {
                guard isViewLoaded else { return }
                imageView.image = image
                guard let image else { return }
                rescaleAndCenterImageInScrollView(image: image)
            }
        }
        
    @IBAction private func didTapBackButton() {
            dismiss(animated: true, completion: nil)
        }
    
    private func rescaleAndCenterImageInScrollView(image: UIImage) {
        imageView.frame = CGRect(origin: .zero, size: image.size)
        scrollView.contentSize = image.size
        print(scrollView.contentSize)
        let minZoomScale = scrollView.minimumZoomScale
        let maxZoomScale = scrollView.maximumZoomScale
        print("minZoomScale", minZoomScale, "maxZoomScale", maxZoomScale)
        view.layoutIfNeeded()
        let visibleRectSize = scrollView.bounds.size
        print("visibleRectSize", visibleRectSize)
        let imageSize = image.size
        print("imageSize", imageSize)
        let hScale = visibleRectSize.width / imageSize.width
        let vScale = visibleRectSize.height / imageSize.height
        print("hScale", hScale, "vScale", vScale)
        let scale = min(maxZoomScale, max(minZoomScale, min(hScale, vScale)))
        print("scale", scale)
        scrollView.setZoomScale(scale, animated: false)
        scrollView.layoutIfNeeded()
        centerImageInScrollView()
    }
    
    private func centerImageInScrollView() {
        let scrollViewSize = scrollView.bounds.size
        let imageViewSize = imageView.frame.size

        let horizontalInset = max((scrollViewSize.width - imageViewSize.width) / 2, 0)
        let verticalInset = max((scrollViewSize.height - imageViewSize.height) / 2, 0)

        scrollView.contentInset = UIEdgeInsets(
            top: verticalInset,
            left: horizontalInset,
            bottom: verticalInset,
            right: horizontalInset
        )
    }

    @IBAction func didTapShareButton(_ sender: UIButton) {
        guard let image else { return }
        let share = UIActivityViewController(
            activityItems: [image],
            applicationActivities: nil
        )
        present(share, animated: true, completion: nil)
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            imageView.image = image
            scrollView.minimumZoomScale = 0.1
            scrollView.maximumZoomScale = 1.25
            guard let image else { return }
            rescaleAndCenterImageInScrollView(image: image)
        }
}

extension SingleImageViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
