//
//  FavoritesCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 21.12.2022.
//

import UIKit

class FavoritesCell: UICollectionViewCell {
    
    @IBOutlet weak var favoritesHeartImg: UIImageView!
    @IBOutlet weak var favoritesLbl: UILabel!
    @IBOutlet weak var favoritesFirstTeamLbl: UILabel!
    @IBOutlet weak var favoritesSecondTeamLbl: UILabel!
    @IBOutlet weak var favoritesFirstTeamImg: UIImageView!
    @IBOutlet weak var favoritesSecondTeamImg: UIImageView!
    
    func setup(with favorites: Favorites) {
        favoritesHeartImg.image = favorites.favorites
        favoritesLbl.text = favorites.time
        favoritesFirstTeamImg.image = favorites.firstTeamImg
        favoritesSecondTeamImg.image = favorites.secondTeamImg
        favoritesFirstTeamLbl.text = favorites.firstTeam
        favoritesSecondTeamLbl.text = favorites.secondTeam
    }
}
