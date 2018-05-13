//
//  WithoutViewCell.swift
//  Viajabessa
//
//  Created by Ronilson on 13/05/2018.
//  Copyright © 2018 Ronilson Batista. All rights reserved.
//

import UIKit

class WithoutViewCell: UITableViewCell {
    
    @IBOutlet fileprivate weak var txtWithout: UILabel!
    @IBOutlet fileprivate weak var imageWithout: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCellAttributes(txtWithout: String, image: UIImage) {
        self.txtWithout.text = txtWithout
        self.txtWithout.textColor = AppControl.shared.colorPrimary
        self.imageWithout.image = image
        self.imageWithout.image = self.imageWithout.image?.overlayImage(AppControl.shared.colorPrimary)
    }
}