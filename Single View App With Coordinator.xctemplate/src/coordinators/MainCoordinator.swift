//
//  ___PROJECTNAME___
//
//  Created on ___DATE___
//

import UIKit

final class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        navigationController.pushViewController(MainViewController.instantiate(), animated: false)
    }

    func finish() {
    }

}
