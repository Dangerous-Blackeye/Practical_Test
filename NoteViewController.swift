//
//  NoteViewController.swift
//  Practical_Test_1
//
//  Created by Amrita Kandrikar on 12/7/22.
//

import UIKit

class NoteViewController: UIViewController {
    
 
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var noteField: UITextView!
    
    public var completion:((String, String)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.becomeFirstResponder()
        navigationItem.rightBarButtonItem=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
    }
    @objc func didTapSave() {
        if let text=textField.text, !text.isEmpty, !noteField.text.isEmpty {
            completion?(text, noteField.text)
        }
    }
}
