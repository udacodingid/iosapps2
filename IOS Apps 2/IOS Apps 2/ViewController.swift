//
//  ViewController.swift
//  IOS Apps 2
//
//  Created by IDOUDA on 07/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    //doinbackground
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.layer.masksToBounds = true
        imgView.layer.cornerRadius = imgView.bounds.width / 2
    }
    
    @IBOutlet weak var uiDatePicker: UIDatePicker!
    
    @IBAction func dateChangeAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.full
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: uiDatePicker.date)
        labelDate.text = strDate
    }
    
    


}

