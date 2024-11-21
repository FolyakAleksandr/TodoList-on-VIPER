import UIKit.UINavigationController

protocol AllTaskRouterProtocol {}

final class AllTaskRouter: AllTaskRouterProtocol {
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    static func allTaskModuleBuilder(_ navigationController: UINavigationController) -> UIViewController {
        let view = AllTaskView()
        let interactor = AllTaskInteractor()
        let presenter = AllTaskPresenter()

        view.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = AllTaskRouter(navigationController: navigationController)

        interactor.presenter = presenter

        return view
    }
}
