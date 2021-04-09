//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Всеволод on 09.04.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var describtionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    
    private func updateSabeButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let desctiptionText = describtionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !desctiptionText.isEmpty
    }
    
    @IBAction func textChange(_ sender: UITextField) {
        updateSabeButtonState()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateSabeButtonState()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let desctiption = describtionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: desctiption, isFavourite: self.emoji.isFavourite)
    }

    
}
