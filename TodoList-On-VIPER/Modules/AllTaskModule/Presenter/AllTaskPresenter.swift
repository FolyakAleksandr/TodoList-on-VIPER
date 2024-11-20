protocol AllTaskPresenterProtocol: AnyObject {}

final class AllTaskPresenter: AllTaskPresenterProtocol {
    weak var view: AllTaskViewProtocol?
    var interactor: AllTaskInteractorProtocol?
    var router: AllTaskRouterProtocol?
}
