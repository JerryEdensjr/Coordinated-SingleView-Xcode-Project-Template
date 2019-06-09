//
//  ___PROJECTNAME___
//
//  Created on ___DATE___
//

import UIKit

final class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(with window: UIWindow) {
        self.navigationController = UINavigationController()
        window.rootViewController = navigationController
    }

    func start() {
        let coordinator = MainCoordinator(navigationController: navigationController)
        addChildCoordinator(coordinator)
        coordinator.start()
    }

    func finish() {}

}
