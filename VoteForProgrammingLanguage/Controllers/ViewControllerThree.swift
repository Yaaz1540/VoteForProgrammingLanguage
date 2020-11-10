//
//  ViewControllerThree.swift
//  VoteForProgrammingLanguage
//
//  Created by HAJI on 11/9/20.
//

import UIKit

class ViewControllerThree: UIViewController {

    @IBOutlet weak var labelThree: UILabel!
    
    var passData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let text = passData {
            labelThree.text = "Sender Value: Thank you for your vote " + text

        }
        
    }
    
}
