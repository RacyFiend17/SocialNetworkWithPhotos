//
//  ImagesListCell.swift
//  SocialNetworkWithPhotos
//
//  Created by Дмитрий Перчемиди on 03.03.2025.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var cellImage: UIImageView!
    
}
