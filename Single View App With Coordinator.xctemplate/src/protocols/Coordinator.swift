//
//  ___PROJECTNAME___
//
//  Created on ___DATE___
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
    func finish()
}

extension Coordinator {
    func addChildCoordinator(_ coordinator: Coordinator) {
        for element in childCoordinators where element === coordinator {
            return
        }

        childCoordinators.append(coordinator)
    }

    func removeChildCoordinator(_ coordinator: Coordinator) {
        guard childCoordinators.isEmpty == false else { return }

        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            break
        }
    }

    func removeAllChildCoordinatorsOf<T>(type: T.Type) {
        childCoordinators = childCoordinators.filter { $0 is T == false }
    }

    func removeAllChildCoordinators() {
        childCoordinators.removeAll()
    }

}
