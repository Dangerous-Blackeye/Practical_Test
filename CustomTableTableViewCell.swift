//
//  CustomTableTableViewCell.swift
//  Practical_Test_1
//
//  Created by Amrita Kandrikar on 12/7/22.
//

import UIKit

class CustomTableTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var headerLbl: UILabel!
//    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
