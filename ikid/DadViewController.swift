//
//  DadViewController.swift
//  ikid
//
//  Created by Kira Brodsky on 4/25/25.
//

import UIKit

class DadViewController: UIViewController {

    var first : Dad2ViewController!
    var second : Dad3ViewController!
    
    @IBOutlet weak var Joke: UITextView!
    
    let question = "What does the windmill say to the rockstar?"
    let punchline = "I'm a big fan"
    var switcher = true
    
    @IBAction func switchViews(_ sender: UIButton) {
        
        var punch = punchline
        
        
        punch = switcher ? self.punchline : self.question
        
        UIView.transition(with:Joke, duration: 0.5, options: .transitionFlipFromLeft, animations: {
        
            self.Joke.text = punch
            
        }, completion: nil)
        switcher = !switcher
//        UIView.animate(withDuration: 0.4, animations: { [self] in
//            if first != nil &&
//                first.view.superview != nil {
//                UIView.transition(with: view, duration: 0.4, options: [
//                    .curveEaseInOut, .transitionFlipFromRight
//                ], animations: {
//                    self.second.view.frame = self.view.frame
//                })
//                switchViewController(first, to: second)
//            }
//            else {
//                UIView.transition(with: view, duration: 0.4, options: [
//                    .curveEaseInOut, .transitionFlipFromLeft
//                ], animations: {
//                    self.first.view.frame = self.view.frame
//                })
//                switchViewController(second, to: first)
//            }
//        })
    }
    
    
//    @IBAction func switchViews(_ sender: UIBarButtonItem) {
//
//    }
    // {{## END switch-with-animation ##}}
    
    // {{## BEGIN switchViewController ##}}
//    fileprivate func switchViewController(_ from: UIViewController?, to: UIViewController) {
//        // Remove the old....
//        if from != nil {
//            from!.willMove(toParent: nil)
//            from!.view.removeFromSuperview()
//            from!.removeFromParent()
//        }
//
//        // ... swap in the new
//        self.addChild(to)
//        self.view.insertSubview(to.view, at: 0)
//        to.didMove(toParent: self)
//    }
//    // {{## END switchViewController ##}}
//    
//    // {{## BEGIN builders ##}}
//    // This is a "helper method" to instantiate from a storyboard
//    // and deal automatically with the downcasting
//    func instantiate<T>(id: String) -> T! {
//        return storyboard?.instantiateViewController(withIdentifier: id) as? T
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        first = instantiate(id: "dad")
//        second = instantiate(id: "dad2")
//        switchViewController(nil, to: first)
//
//        // Do any additional setup after loading the view.
//    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
