//
//  ___PROJECTNAME___
//
//  Created on ___DATE___
//

import UIKit

protocol Storyboardable where Self: UIViewController {
    static func instantiate() -> Self
    static func instantiate(with name: String) -> Self
}

enum StoryboardName: String {
    case MainViewController
}

extension Storyboardable {
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: self))
        // swiftlint:disable:next force_cast
        return viewController as! Self
    }

    static func instantiate(with name: String) -> Self {
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: self))
        // swiftlint:disable:next force_cast
        return viewController as! Self
    }

}

