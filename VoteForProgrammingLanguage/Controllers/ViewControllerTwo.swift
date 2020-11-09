//
//  ViewControllerTwo.swift
//  VoteForProgrammingLanguage
//
//  Created by HAJI on 11/8/20.
//
 
import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var viewControllerTwoImage: UIImageView!
    @IBOutlet weak var viewControllerTwoLable: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    
    var image = UIImage()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllerTwoLable.text = "You selected \(name) for vote"
        viewControllerTwoImage.image = image
        
    }
    @IBAction func clickToVote(_ sender: Any) {
        
        let userInput = myTextField.text
        performSegue(withIdentifier: "goToSecondVC", sender: userInput)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            
            if let destination = segue.destination as? ViewControllerThree {
                destination.passData = sender as? String
                print("Sender Value: Thank you for your vote + \(sender)")
                    

        }
    }
    
    }
}
