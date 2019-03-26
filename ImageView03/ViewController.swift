//
//  ViewController.swift
//  ImageView03
//
//  Created by D7703_23 on 2019. 3. 26..
//  Copyright © 2019년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var cheak: UILabel!
    var count = 1
    var qkdgid = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView.image = UIImage(named: "frame1.png")
        
    }

    @IBAction func changeImage(_ sender: Any) {
        if count==5{
            qkdgid=false
        } else if count==1{
            qkdgid=true
        }
        if qkdgid==true{
            count+=1
        }else{
            count-=1
        }
        
        
        
        myImageView.image = UIImage(named: "frame\(count).png")
        
        cheak.text = String(count)
    }
    
}

