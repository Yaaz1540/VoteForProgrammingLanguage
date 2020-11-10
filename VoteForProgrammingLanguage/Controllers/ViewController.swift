//
//  ViewController.swift
//  VoteForProgrammingLanguage
//
//  Created by HAJI on 11/8/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var programName = ComputerProgrammingLanguages()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programName.programLanguageNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var newCell = UITableViewCell()
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableView{
            
            cell.cellLabel.text = programName.programLanguageNames[indexPath.row]
            cell.cellImage.image = UIImage(named: programName.programLanguageNames[indexPath.row])
            
            newCell = cell
        }
        return newCell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc: ViewControllerTwo = self.storyboard?.instantiateViewController(identifier: "ViewControllerTwo") as! ViewControllerTwo
        
        vc.image = UIImage(named: programName.programLanguageNames[indexPath.row])!
        vc.name = programName.programLanguageNames[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
