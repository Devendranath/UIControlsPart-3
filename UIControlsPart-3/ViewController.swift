//
//  ViewController.swift
//  UIControlsPart-3
//
//  Created by apple on 12/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBAction func home(_ sender: Any) {
        scrollView.contentOffset = CGPoint(x: 0, y: 0)
        pageControl.numberOfPages =
            Int(scrollView.contentSize.width / scrollView.frame.size.width)
        print(pageControl.numberOfPages)
    }
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPoint = scrollView.contentOffset
        
        pageControl.currentPage = Int((currentPoint.x / scrollView.frame.size.width ))
    }
}
