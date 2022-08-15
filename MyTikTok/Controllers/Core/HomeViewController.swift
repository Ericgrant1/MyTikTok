//
//  HomeViewController.swift
//  MyTikTok
//
//  Created by Eric Grant on 11.08.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let horizontalScroleView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.bounces = false
        scrollView.backgroundColor = .red
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(horizontalScroleView)
        setUpFeed()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        horizontalScroleView.frame = view.bounds
        
    }
    
    // Private

    private func setUpFeed() {
        
    }

}

