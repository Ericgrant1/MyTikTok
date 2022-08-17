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
        scrollView.isPagingEnabled = true
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
        horizontalScroleView.contentSize = CGSize(width: view.width * 2, height: view.height)
        setUpFollowingFeed()
        setUpForYouFeed()
    }
    
    func setUpFollowingFeed() {
        let pagingController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .vertical,
            options: [:]
        )
        
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        
        pagingController.setViewControllers(
            [vc],
            direction: .forward,
            animated: false,
            completion: nil
        )
        pagingController.dataSource = self
        
        horizontalScroleView.addSubview(pagingController.view)
        pagingController.view.frame = CGRect(
            x: 0,
            y: 0,
            width: horizontalScroleView.width,
            height: horizontalScroleView.height
        )
        addChild(pagingController)
        pagingController.didMove(toParent: self)
    }
    
    func setUpForYouFeed() {
        let pagingController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .vertical,
            options: [:]
        )
        
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        
        pagingController.setViewControllers(
            [vc],
            direction: .forward,
            animated: false,
            completion: nil
        )
        pagingController.dataSource = self
        
        horizontalScroleView.addSubview(pagingController.view)
        pagingController.view.frame = CGRect(
            x: view.width,
            y: 0,
            width: horizontalScroleView.width,
            height: horizontalScroleView.height
        )
        addChild(pagingController)
        pagingController.didMove(toParent: self)
    }

}

extension HomeViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let vc = UIViewController()
        vc.view.backgroundColor = [UIColor.red, UIColor.gray, UIColor.green].randomElement()
        return vc
    }
    
}
