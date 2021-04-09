//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Всеволод on 08.04.2021.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var describtionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func set(object: Emoji) {
      self.emoji.text = object.emoji
       self.describtionLabel.text = object.description
        self.nameLabel.text = object.name
    }

}
