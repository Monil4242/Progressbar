//
//  ViewController.swift
//  progressbar
//
//  Created by monil sojitra on 27/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pg: UIProgressView!
    var time = Timer()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        pg.progress = 0.0
        progress()
        
        
    }

    func progress(){
        var a : Float = 0.0
        self.pg.progress = a
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { _ in
            a += 0.01
            self.pg.progress = a
            if self.pg.progress == 1.0{
                self.pg.progress = 0.0
                self.navigate()
                self.time.invalidate()
            }
        })
    }
    func navigate(){
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2; navigationController?.pushViewController(n, animated: true)
    }

}

