//
//  ViewControllerThree.swift
//  VoteForProgrammingLanguage
//
//  Created by HAJI on 11/9/20.
//

import UIKit

class ViewControllerThree: UIViewController {

    @IBOutlet weak var labelThree: UILabel!
    
    var passData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelThree.text = passData
        
    }
    
}
