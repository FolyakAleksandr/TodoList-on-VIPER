protocol AllTaskInteractorProtocol {}

final class AllTaskInteractor: AllTaskInteractorProtocol {
    weak var presenter: AllTaskPresenterProtocol?
}
