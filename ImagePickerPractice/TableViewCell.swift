//
//  TableViewCell.swift
//  ImagePickerPractice
//
//  Created by Jonathan Barrera on 11/16/18.
//  Copyright © 2018 Jonathan Barrera. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
