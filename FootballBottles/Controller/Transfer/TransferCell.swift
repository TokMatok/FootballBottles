//
//  TransferCell.swift
//  FootballBottles
//
//  Created by Golyakovph on 19.12.2022.
//

import UIKit

class TransferCell: UITableViewCell {

    @IBOutlet weak var transferName: UILabel!
    @IBOutlet weak var transferTeamFirstImg: UIImageView!
    @IBOutlet weak var transferTeamSecondImg: UIImageView!
    @IBOutlet weak var transferCostsLbl: UILabel!

    func setup(with transfer: Transfer) {
        transferName.text = transfer.transferName
        transferTeamFirstImg.image = transfer.transferTeamFirstImg
        transferTeamSecondImg.image = transfer.transferTeamSecondImg
        transferCostsLbl.text = transfer.transferCost
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
