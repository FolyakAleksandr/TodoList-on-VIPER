import UIKit

extension UISearchBar {
    func setRightImage(_ imageName: String, _ height: CGFloat = 20, _ width: CGFloat = 20) {
        guard let image = UIImage(systemName: imageName) else { return }

        let microphoneImageView = UIImageView(image: image)
        microphoneImageView.contentMode = .scaleAspectFit
        microphoneImageView.tintColor = .gray
        microphoneImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)

        searchTextField.rightView = microphoneImageView
        searchTextField.rightViewMode = .unlessEditing
    }
}
