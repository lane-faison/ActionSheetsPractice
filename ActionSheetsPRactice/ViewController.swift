//
//  ViewController.swift
//  ActionSheetsPRactice
//
//  Created by Lane Faison on 7/30/17.
//  Copyright © 2017 Lane Faison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayImageView: UIImageView!
    @IBOutlet weak var nightImageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGesture()
    
    }
    
    func addGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.showActionSheet))
        view.addGestureRecognizer(tap)
    }
    
    func showActionSheet() {
        let actionSheet = UIAlertController(title: "Select Time", message: "Day or Night?", preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        let day = UIAlertAction(title: "Day", style: .default) { action in
            self.changeDayTime(isDay: true)
        }
        
        let night = UIAlertAction(title: "Night", style: .default) { action in
            self.changeDayTime(isDay: false)
        }
        
        actionSheet.addAction(day)
        actionSheet.addAction(night)
        actionSheet.addAction(cancel)
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    func changeDayTime(isDay: Bool) {
        UIView.animate(withDuration: 0.4) {
            self.dayImageView.alpha = isDay ? 1.0 : 0.0
            self.nightImageView.alpha = isDay ? 0.0 : 1.0
        }
    }


}

