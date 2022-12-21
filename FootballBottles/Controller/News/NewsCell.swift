//
//  NewsCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var newsImageCell: UIImageView!
    @IBOutlet weak var newsTextLbl: UILabel!
    
    func setup(with news: News) {
        newsImageCell.image = news.newsImage
        newsTextLbl.text = news.newsLbl
    }

}

