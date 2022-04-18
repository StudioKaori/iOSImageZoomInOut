//
//  ViewController.swift
//  ImageZoomInOut
//
//  Created by Kaori Persson on 2022-04-18.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    let image = UIImage(named: "image1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = image
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 4.0
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        print("view for zooming")
        return imageView
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        print("Zoom start")
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        print("Zoom end")
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("Did zoom")
    }

}

