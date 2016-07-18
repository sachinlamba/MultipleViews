//
//  ViewController.swift
//  MultipleImageViews
//
//  Created by Sachin Lamba on 18/07/16.
//  Copyright © 2016 LambaG. All rights reserved.
//

import UIKit

enum Color: String {
    case Red
    case Blue
    case Green
    case White
    case Black
    
    func color() -> UIColor {
        switch self {
        case .Red: return UIColor.redColor()
        case .Blue: return UIColor.blueColor()
        case .Green: return UIColor.greenColor()
        case .White: return UIColor.whiteColor()
        case .Black: return UIColor.blackColor()
        }
    }

}

class ViewController: UIViewController {
    
    var colors = [Color.Red, Color.White, Color.Black, Color.Blue, Color.Green]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let size: CGRect = self.view.window.frame.size
        let size: CGRect = UIScreen.mainScreen().bounds
        
        let width = size.width
        let height = size.height
        
        let vc1 = UIView(frame: CGRectMake(0, 20 + 0, width/2, height/2))
        vc1.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
        vc1.layer.cornerRadius = 25
        view.addSubview(vc1)
        
        let vc2 = UIView(frame: CGRectMake(width/2, 20 + 0, width/2, height/2))
        vc2.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
        vc2.layer.cornerRadius = 25
        view.addSubview(vc2)
        
        let vc3 = UIView(frame: CGRectMake(0, 20 + height/2, width/2, height/2 - 20))
        vc3.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
        vc3.layer.cornerRadius = 25
        view.addSubview(vc3)
        
        let vc4 = UIView(frame: CGRectMake(width/2, 20 + height/2, width/2, height/2 - 20))
        vc4.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
        vc4.layer.cornerRadius = 25
        view.addSubview(vc4)
        
        
        
        let label: UILabel = UILabel(frame: CGRectMake(0, 20 + 0, width/2, height/2))
        label.text = "Hello"
        label.textAlignment = .Center
        label.textColor = colors[Int(arc4random_uniform(4) + 1)].color()
        vc1.addSubview(label)
//
//        for subview in view.subviews {
//            
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

