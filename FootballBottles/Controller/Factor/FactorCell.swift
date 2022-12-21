//
//  FactorCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 20.12.2022.
//

import UIKit

class FactorCell: UITableViewCell {
    
    @IBOutlet weak var factorLbl: UILabel!
    @IBOutlet weak var factorNumberLbl: UILabel!
    @IBOutlet weak var factorButton: UIButton!
    @IBOutlet weak var factorSecondView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        factorSecondView.isHidden = true
    }
    

}



