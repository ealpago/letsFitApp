//
//  ViewController.swift
//  letsFitApp
//
//  Created by Emre Alpago on 13.05.2023.
//
import UIKit

enum TabBarConstant {
    static let fitnessStoryBoardID = "FitnessViewController"
    static let fitnessStoryBoardName = "FitnessStoryboard"
    static let mealsStoryBoardID = "MealsViewController"
    static let mealsStoryBoardName = "MealsStoryboard"
    static let reportsStoryBoardID = "ReportsViewController"
    static let reportsStoryBoardName = "ReportsStoryboard"
}

enum TabbarItemType {
    case fitness, meals, reports

    var name: String {
        switch self {
        case .fitness:
            return "FitnessStoryboard"
        case .meals:
            return "MealsStoryboard"
        case .reports:
            return "ReportsStoryboard"
        }
    }

    var identifier: String {
        switch self {
        case .fitness:
            return "FitnessViewController"
        case .meals:
            return "MealsViewController"
        case .reports:
            return "ReportsViewController"
        }
    }

    var image: UIImage {
        switch self {
        case .fitness:
            return UIImage(systemName: "figure.run")!
        case .meals:
            return UIImage(systemName: "fork.knife")!
        case .reports:
            return  UIImage(systemName: "chart.bar.fill")!
        }
    }
    var selectedImage: UIImage {
        switch self {
        case .fitness:
            return UIImage(systemName: "figure.run")!
        case .meals:
            return UIImage(systemName: "fork.knife")!
        case .reports:
            return  UIImage(systemName: "chart.bar.fill")!
        }
    }
}

final class BaseTabBarController: UITabBarController {
    var items: [TabbarItemType] {
        [.fitness, .meals, .reports]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .black
    }

    func setupTabBar() {
        let views = items.compactMap { item in
            let vc = UIStoryboard(name: item.name, bundle: nil).instantiateViewController(withIdentifier: item.identifier)

            let tabBarItem = UITabBarItem(title: nil,
                                          image: item.image,
                                          selectedImage: item.selectedImage)
            vc.tabBarItem = tabBarItem

            return vc
        }
        setViewControllers(views, animated: true)
    }
}
