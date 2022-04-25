//
//  PageViewController.swift
//  IOSOverview
//
//  Created by Roma Patel on 25/04/22.
//

import UIKit

class PageViewController: UIPageViewController {
    
    lazy var orderedViewController: [UIViewController] = [viewControllerWith(name: "ProgressBarViewController"), viewControllerWith(name: "WKWebViewViewController")]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        setUpViewControllers()
    }
    
    func setUpViewControllers() {
          currentIndex = 0
          let firstViewController = orderedViewController[currentIndex]
          setViewControllers([firstViewController], direction:.forward, animated: false)
    }
    
    func viewControllerWith(name: String) -> UIViewController {
           return UIStoryboard(name: "UIComponents", bundle: nil).instantiateViewController(withIdentifier: name)
    }
}

extension PageViewController : UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewController.firstIndex(of: viewController) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else {
            return nil
        }
        guard orderedViewController.count > previousIndex else {
            return nil
        }
        return orderedViewController[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewController.firstIndex(of: viewController) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        let orderedViewcontrollerCount = orderedViewController.count
        guard orderedViewcontrollerCount != nextIndex else {
            return nil
        }
        guard orderedViewcontrollerCount > nextIndex else {
            return nil
        }
        return orderedViewController[nextIndex]
    }
}
