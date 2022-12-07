//
//  HomePageViewController.swift
//  Practical_Test_1
//
//  Created by Amrita Kandrikar on 12/7/22.
//

import UIKit

class HomePageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var table:UITableView!
    
    @IBOutlet weak var label: UILabel!
    var models:[(title: String, note:String)]=[]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate=self
        table.dataSource=self
        title="Notes"
    }
    
    @IBAction func didTapNewNote(_ sender: UIButton) {
        guard let vc=storyboard?.instantiateViewController(withIdentifier: "note") as? NoteViewController else {
            return
        }
        vc.title="New Note"
        vc.completion={noteTitle, note in
            self.navigationController?.popViewController(animated: true)
            vc.navigationItem.largeTitleDisplayMode = .never
            self.models.append((title:noteTitle, note: note))
            self.label.isHidden = true
            self.table.isHidden = false
            self.table.reloadData()
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text=models[indexPath.row].title
        cell.detailTextLabel?.text=models[indexPath.row].note
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model=models[indexPath.row]
        guard let vc=storyboard?.instantiateViewController(withIdentifier: "note") as? DetailViewController else {
            return
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.title="Note"
        vc.noteTitle=model.title
        vc.note=model.note
        navigationController?.pushViewController(vc, animated: true)
    }

}
