import UIKit

protocol AllTaskViewProtocol: AnyObject {}

final class AllTaskView: UIViewController {
    // MARK: variables

    var presenter: AllTaskPresenterProtocol?
    
    // MARK: - private properties
    
    private let titleLabel = UILabel()
    private let searchBar = UISearchBar()
    
    // MARK: - lyfecycle
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupSearchBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupViews()
    }
    
    // MARK: - private methods
    
    private func setupLayout() {
        layoutTitleLabel()
        layoutSearchBar()
    }
    
    private func setupViews() {
        setupBackgroundViewController()
        setupNavigationBar()
        setupTitleLabel()
    }
    
    private func layoutTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    private func layoutSearchBar() {
        view.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        searchBar.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
    }
    
    private func setupBackgroundViewController() {
        view.backgroundColor = .black
    }
    
    private func setupNavigationBar() {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupTitleLabel() {
        titleLabel.text = "Задачи"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 34, weight: .bold)
    }
    
    private func setupSearchBar() {
        searchBar.placeholder = "Search"
        searchBar.setRightImage("microphone.fill")
        searchBar.backgroundImage = UIImage()
        searchBar.isTranslucent = true
    }
}

// MARK: - extensions

extension AllTaskView: AllTaskViewProtocol {}
