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
    
    var textcolors = [Color.Red, Color.Black, Color.Blue, Color.White, Color.Green]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let size: CGRect = self.view.window.frame.size
        let size: CGRect = UIScreen.mainScreen().bounds
        
        let width = size.width
        let height = size.height
//        
//        let vc1 = UIView(frame: CGRectMake(0, 20 + 0, width/2, height/2))
//        vc1.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
//        vc1.layer.cornerRadius = 25
//        view.addSubview(vc1)
//        
//        let vc2 = UIView(frame: CGRectMake(width/2, 20 + 0, width/2, height/2))
//        vc2.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
//        vc2.layer.cornerRadius = 25
//        view.addSubview(vc2)
//        
//        let vc3 = UIView(frame: CGRectMake(0, 20 + height/2, width/2, height/2 - 20))
//        vc3.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
//        vc3.layer.cornerRadius = 25
//        view.addSubview(vc3)
//        
//        let vc4 = UIView(frame: CGRectMake(width/2, 20 + height/2, width/2, height/2 - 20))
//        vc4.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
//        vc4.layer.cornerRadius = 25
//        view.addSubview(vc4)
//        
        for i in 0 ... 1 {
            for j in 0 ... 1 {
                let vc = UIView(frame: CGRectMake((CGFloat)(i)*width/2, 20 + (CGFloat)(j)*height/2, width/2, height/2))
                vc.backgroundColor = colors[Int(arc4random_uniform(4) + 1)].color()
                vc.layer.cornerRadius = 25
  //            vc.layer.borderColor = textcolors[Int(arc4random_uniform(4) + 1)].color()
                vc.layer.borderWidth = (CGFloat)(Int(arc4random_uniform(10)))
                
                view.addSubview(vc)

            }
        }
        
        for subview in view.subviews {
            let label: UILabel = UILabel(frame: CGRectMake(0, 20 + 0, width/2 - width/4, height/2 - height/4))
            label.text = "Hello view on \(width/2) and \(height/2)"
            
            label.layer.backgroundColor = UIColor.brownColor().CGColor
            label.textAlignment = .Center
            label.textColor = textcolors[Int(arc4random_uniform(4) + 1)].color()
            label.layer.shadowRadius = CGFloat(1)
            label.layer.shadowOpacity = 0.5
            label.layer.shadowColor = UIColor.redColor().CGColor
            //label.shadowOffset = CGSize(width: 5, height: 5)
            label.layer.shadowOffset = CGSize(width: 5, height: 5)
            label.numberOfLines = 0
            
       
            //     label.layoutMargins.right = CGFloat(width/2 - 20)
            
         //   CGRect rect = [self.textView.layoutManager usedRectForTextContainer:self.textView.textContainer];

            subview.addSubview(label)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

