//
//  Dad2ViewController.swift
//  ikid
//
//  Created by Kira Brodsky on 4/27/25.
//

import UIKit

class Dad2ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Image: UIImageView!
    
    let question = "JokeTop"
    let punchline = "JokeBottom"
    var switcher = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchViews(_ sender: UIButton) {
        
        var punch = punchline
        
        
        punch = switcher ? self.punchline : self.question
        
        UIView.transition(with:Image, duration: 0.5, options: .transitionFlipFromLeft, animations: {
            
            self.Image.image = UIImage(named:punch)
            
        }, completion: nil)
        switcher = !switcher
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
