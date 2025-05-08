//
//  ProfileViewController.swift
//  SocialNetworkWithPhotos
//
//  Created by Дмитрий Перчемиди on 05.03.2025.
//

import UIKit

class ProfileViewController: UIViewController {
    private var nameLabel = UILabel()
    private var loginNameLabel = UILabel()
    private var descriptionLabel = UILabel()
    private var logoutButton = UIButton()
    private var avatarImageView = UIImageView()
    
    private func makeLogOutButton()  {
        logoutButton = UIButton.systemButton(
            with: UIImage(named: "logOutButton") ?? UIImage(),
            target: self,
            action: #selector(Self.didTapLogoutButton)
        )
        logoutButton.tintColor = UIColor(named: "YP Red") ?? .red
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
    }
    
    @objc private func didTapLogoutButton() {
        
    }
    
    private func makeLabels() {
        nameLabel.font = .systemFont(ofSize: 23, weight: .bold)
        nameLabel.textColor = UIColor(named: "YP White") ?? .white
        nameLabel.text = "Екатерина Новикова"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        loginNameLabel.font = .systemFont(ofSize: 13)
        loginNameLabel.textColor = UIColor(named: "YP Gray") ?? .gray
        loginNameLabel.text = "@ekaterina_naov"
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginNameLabel)
        
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = UIColor(named: "YP White") ?? .white
        descriptionLabel.text = "@ekaterina_naov"
        nameLabel.text = "Hello, World!"
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLabel)
    }
    
    private func makeAvatarImageView() {
        avatarImageView.image = UIImage(named: "Photo") ?? UIImage()
        avatarImageView.contentMode = .scaleAspectFit
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarImageView)
    }
    
    @objc private func setupConstraints () {
        NSLayoutConstraint.activate([
        avatarImageView.widthAnchor.constraint(equalToConstant: 70),
        avatarImageView.heightAnchor.constraint(equalToConstant: 70),
        avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
        
        logoutButton.heightAnchor.constraint(equalToConstant: 44),
        logoutButton.heightAnchor.constraint(equalToConstant: 44),
        logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
        
        nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
        nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
        
        loginNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
        loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
        
        descriptionLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
        descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8)
        ])
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor(named: "YP Black") ?? .black
        makeLogOutButton()
        makeLabels()
        makeAvatarImageView()
        setupConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}
