//
//  EditProfileBioPresenter.swift
//  Instagram
//
//  Created by Alim Kuprianov on 10.04.2022.
//

protocol EditProfileBioPresenterDelegate: AnyObject {
    func editProfileBioPresenter(_ editProfileBioPresenter: EditProfileBioPresenter, didChangeBio bio: String?)
}

final class EditProfileBioPresenter {
    // MARK: Properties
    
    weak var view: EditProfileBioViewControllerProtocol?
    weak var coordinator: EditProfileBioCoordinatorProtocol?
    
    weak var delegate: EditProfileBioPresenterDelegate?
    
    var bio: String?
    
    // MARK: Constants
    
    private enum Constants {
        static let characterLimit = 50
    }
}

// MARK: - EditProfileBioView Output

extension EditProfileBioPresenter: EditProfileBioViewControllerOutputProtocol {
    func viewDidLoad() {
        view?.setBio(bio)
        view?.setCharacterLimit(Constants.characterLimit)
    }
    
    func didTapCloseButton() {
        coordinator?.closeEditProfileBioViewController()
    }
    
    func didTapEditButton(withBio bio: String?) {
        if bio != self.bio {
            delegate?.editProfileBioPresenter(self, didChangeBio: bio)
        }
        
        coordinator?.closeEditProfileBioViewController()
    }
}
