import UIKit

protocol AllTaskViewProtocol: AnyObject {}

final class AllTaskView: UIViewController {
    // MARK: variables

    var presenter: AllTaskPresenterProtocol?
}

// MARK: - extensions

extension AllTaskView: AllTaskViewProtocol {}
