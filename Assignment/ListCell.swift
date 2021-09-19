//
//  ListCell.swift
//  Assignment
//
//  Created by Abinash Padhi on 18/09/21.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblTital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
