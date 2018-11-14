//
//  SopaLetrasViewController.swift
//  novus
//
//  Created by Paola Garzón on 8/6/18.
//  Copyright © 2018 Paola Garzón. All rights reserved.
//

import UIKit

struct ViewStateRompecabezas {
    static var state = false
}

class SopaLetrasViewController: UIViewController {
    
    var allImgViews: [UIImageView] = []
    var allCenters: [NSValue] = []
    
    //ir a puntos finales
    @IBAction func irPuntos(_ sender: Any) {
        performSegue(withIdentifier: "irPuntos", sender: self)
    }
    
    @IBAction func goAtaque(_ sender: Any) {
        ViewStateRompecabezas.state = true
        performSegue(withIdentifier: "goAtaque", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        
        let startPuzzle = Int(self.view.frame.width) - 600
        
        allImgViews = [UIImageView]()
        allCenters = [NSValue]()
        
        var xCen: Int = startPuzzle
        var yCen: Int = 440
        
        for i in 0..<4 {
            for j in 0..<4 {
                
                let myImgView = UIImageView(frame: CGRect(x: 300, y: 300, width: 150, height: 150))
                
                let curCen = CGPoint(x: CGFloat(xCen), y: CGFloat(yCen))
                allCenters.append(NSValue(cgPoint: curCen))
                
                myImgView.center = curCen
                myImgView.image = UIImage(named: String(format: "jc_%02i.jpeg", j + i * 4))
                myImgView.isUserInteractionEnabled = true
                allImgViews.append(myImgView)
                view.addSubview(myImgView)
                xCen += 150
            }
            xCen = startPuzzle
            yCen += 150
        }
        
        allImgViews[0].removeFromSuperview()
        allImgViews.remove(at: 0)
        
        randomizeBlocks()
    }
    
    var emptySpot = CGPoint.zero
    
    func randomizeBlocks() {
        var centersCopy = allCenters
        
        var randLocInt: Int
        var randLoc: CGPoint
        
        for any: UIView? in allImgViews {
            randLocInt = Int(arc4random()) % centersCopy.count
            randLoc = centersCopy[randLocInt].cgPointValue
            
            any?.center = randLoc
            centersCopy.remove(at: randLocInt)
        }
        emptySpot = centersCopy[0].cgPointValue
    }
    
    
    var tapCen = CGPoint.zero
    var left = CGPoint.zero
    var right = CGPoint.zero
    var top = CGPoint.zero
    var bottom = CGPoint.zero
    var leftIsEmpty = false
    var rightIsEmpty = false
    var topIsEmpty = false
    var bottomIsEmpty = false
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let myTouch: UITouch? = Array(touches)[0]
        
        if myTouch?.view != self.view {
            tapCen = (myTouch?.view?.center)!
            
            left = CGPoint(x: tapCen.x-150, y: tapCen.y)
            right = CGPoint(x: tapCen.x+150, y: tapCen.y)
            top = CGPoint(x: tapCen.x, y: tapCen.y+150)
            bottom = CGPoint(x: tapCen.x, y: tapCen.y-150)
            
            if NSValue(cgPoint: left).isEqual(NSValue(cgPoint: emptySpot)) {
                leftIsEmpty = true
            }
            if NSValue(cgPoint: right).isEqual(NSValue(cgPoint: emptySpot)) {
                rightIsEmpty = true
            }
            if NSValue(cgPoint: top).isEqual(NSValue(cgPoint: emptySpot)) {
                topIsEmpty = true
            }
            if NSValue(cgPoint: bottom).isEqual(NSValue(cgPoint: emptySpot)) {
                bottomIsEmpty = true
            }
            
            if leftIsEmpty || rightIsEmpty || bottomIsEmpty || topIsEmpty {
                UIView.beginAnimations(nil, context: nil)
                UIView.setAnimationDuration(0.5)
                myTouch?.view?.center = emptySpot
                UIView.commitAnimations()
                emptySpot = tapCen
                leftIsEmpty = false
                rightIsEmpty = false
                topIsEmpty = false
                bottomIsEmpty = false
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
