//
//  ViewController.swift
//  SaveUp Base Test
//
//  Created by alex heidarian on 8/10/18.
//  Copyright © 2018 alex heidarian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var activeGoal: UIImageView!
    
    @IBOutlet weak var progressContainer: UIView!
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var BtnView: UIView!
    
    var toggle = false;
    
    @IBOutlet weak var showDetailContainer: UIView!
    @IBAction func showDetail(_ sender: Any) {
        if(toggle == false) {
            
            UIView.animate(withDuration: 0.2, delay: 0.1, options: [
                UIViewAnimationOptions.curveEaseIn
                ], animations: {
                self.activeGoal.frame.size.height = 652;
                
            }, completion: nil);
            
            UIView.animate(withDuration: 0.4, delay: 0.1, options: [
                UIViewAnimationOptions.curveEaseIn
                ], animations: {
                    
                    self.showDetailContainer.transform = self.showDetailContainer.transform.translatedBy(x: 0, y: 361)
                    self.showDetailContainer.transform = self.showDetailContainer.transform.rotated(by: .pi)
                    //self.showDetailContainer.transform = CGAffineTransform(rotationAngle: 180 * CGFloat.pi / 180);
            }, completion: nil);
            
            toggle = !toggle;
        } else {
            
            UIView.animate(withDuration: 0.4, delay: 0.1, options: [
                UIViewAnimationOptions.curveEaseIn], animations: {
                    
                //self.showDetailContainer.transform = self.showDetailContainer.transform.rotated(by: .pi);
                //self.showDetailContainer.transform = self.showDetailContainer.transform.translatedBy(x: 0, y: -361)
                self.showDetailContainer.transform = CGAffineTransform.identity;
                self.activeGoal.frame.size.height = 297;
            }, completion: nil)
            toggle = !toggle;
        }
        
        
        
    }
    

    @IBOutlet weak var AddMoneyContainer: UIView!
    
    @IBOutlet weak var Line: UIView!
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        AddMoneyContainer.clipsToBounds = true;
        AddMoneyContainer.layer.cornerRadius = 5;
        
        //AddMoneyContainer.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        progressBar.clipsToBounds = true;
        progressContainer.layer.cornerRadius = 3;
        
        progressBar.layer.cornerRadius = 3;
        progressBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
    
        // Do any additional setup after loading the view, typically from a nib.
        self.activeGoal.frame.size.width = self.view.frame.size.width;
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {

        
        
        
        
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        
        
       
        
    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

