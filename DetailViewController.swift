//
//  DetailViewController.swift
//  Practical_Test_1
//
//  Created by Amrita Kandrikar on 12/7/22.
//

import UIKit

class DetailViewController: UIViewController {
    
   
    @IBOutlet weak var ttileLabel: UILabel!
    
    @IBOutlet weak var noteLabel: UITextView!
    var noteTitle:String=""
    var note:String=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ttileLabel.text=noteTitle
        noteLabel.text=note
       
    }
    

}
